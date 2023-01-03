use travel_agency;

-- A
select Hotel_Name, Type, count(Room_Number) as Amount_Of_Rooms, truncate(avg(Price_Per_Night/Number_Of_Places), 2) as Price_Per_Place
from hotel, hotel_room
where hotel_room.Hotel_ID = hotel.Hotel_ID
group by Hotel_Name, Type;

-- B
select Hotel_Name, sum(Number_Of_Places) from hotel_room, hotel
where hotel.Hotel_ID = hotel_room.Hotel_ID
group by hotel.Hotel_ID;

-- С
select upper(`Name`) as Name, upper(Surname) as Surname, Address from client
limit 50;

select Country_Name, lower(currency.Currency_Name) as Currency, Rate_To_The_Dollar from country, currency
where country.Currency_Name = currency.Currency_Name;

-- D
select `Name`, Surname, datediff(Return_Date, Date_Of_Departure) as Duration, Date_Of_Departure from package_tour inner join `check` c on package_tour.Check_ID = c.Check_ID inner join client c2 on c.Client_ID = c2.Client_ID
where datediff(Return_Date, Date_Of_Departure) > 15 and extract(month from Date_Of_Departure) < 4
limit 8;

-- E
select Hotel_Name, extract(month from Date_Of_Departure) as Month, sum(Number_Of_People) as Number_Of_Clients_Arriving from hotel inner join package_tour pt on hotel.Hotel_ID = pt.Hotel_ID
where extract(year from Date_Of_Departure) = 2023
group by Hotel_Name, extract(month from Date_Of_Departure)
order by Hotel_Name, month;

-- F
select Hotel_Name, Type, count(Room_Number) as Amount_Of_Rooms, truncate(avg(Price_Per_Night/Number_Of_Places), 2) as Price_Per_Place from hotel, hotel_room
where hotel_room.Hotel_ID = hotel.Hotel_ID
group by Hotel_Name, Type
having Amount_Of_Rooms > 30
order by Hotel_Name, Amount_Of_Rooms;

-- G
select Max(Price_Per_Night/Number_Of_Places) as The_Highest_Price
from hotel_room
having The_Highest_Price > 150;

-- H
select row_number() over (partition by Surname, `Name` order by Surname) as Number, Surname, `Name`, Date_Of_Departure, Return_Date, Number_Of_People from client inner join `check` c on client.Client_ID = c.Client_ID inner join package_tour pt on c.Check_ID = pt.Check_ID;

-- I
select * from client
where Phone_Number like '+380%7'
order by Surname, `Name`;
