-- A
select Hotel_Name, TRUNCATE((select AVG(Price_Per_Night/Number_Of_Places)
           from hotel_room where hotel.Hotel_ID = hotel_room.Hotel_ID), 1) as Average_Price_Per_Person
from hotel;

select Hotel_Name, Type, count(Room_Number) as Amount_Of_Rooms, truncate(avg(Price_Per_Night/Number_Of_Places), 2) as Price_Per_Place from hotel, (select * from hotel_room
where Price_Per_Night/Number_Of_Places < 75 and Type = 'Suite' or Price_Per_Night/Number_Of_Places < 55 and Type = 'Deluxe') cheap_rooms
where cheap_rooms.Hotel_ID = hotel.Hotel_ID
group by Hotel_Name, Type;

-- B
select * from hotel
where exists(select * from hotel_room
where (Price_Per_Night/Number_Of_Places < 75 and Type = 'Suite' or Price_Per_Night/Number_Of_Places < 55 and Type = 'Deluxe')
  and hotel.Hotel_ID = hotel_room.Hotel_ID);

select Hotel_Name, Phone_Number from hotel where Hotel_ID in (select distinct Hotel_ID from hotel_room
where Price_Per_Night/Number_Of_Places < 75 and Type = 'Suite' or Price_Per_Night/Number_Of_Places < 55 and Type = 'Deluxe');

-- C
select Hotel_Name, Currency_Name, TRUNCATE((select AVG(Price_Per_Night/Number_Of_Places)
           from hotel_room where hotel.Hotel_ID = hotel_room.Hotel_ID)/Rate_To_The_Dollar, 2) as Average_Price_In_Currency
from hotel, currency;

-- D
select `Name`, Surname, Patronymic, Hotel_Name, Date_Of_Departure from client, `check`, package_tour, hotel
where client.Client_ID = `check`.Client_ID and `check`.Check_ID = package_tour.Check_ID and package_tour.Hotel_ID = hotel.Hotel_ID
order by Hotel_Name;

-- E
select Hotel_Name, Room_Number, Price_Per_Night/Number_Of_Places as Price_Per_Place from hotel, hotel_room
where hotel.Hotel_ID = hotel_room.Hotel_ID and Type = 'Deluxe';

-- F
select Country_Name, currency.Currency_Name, Rate_To_The_Dollar from country inner join currency on country.Currency_Name = currency.Currency_Name;

-- G
select Country_Name, Name_Of_Settlement, Hotel_Name from human_settlements left join
        (select * from hotel
        where exists(select * from hotel_room
        where (Price_Per_Night/Number_Of_Places < 75 and Type = 'Suite' or Price_Per_Night/Number_Of_Places < 55 and Type = 'Deluxe')
        and hotel.Hotel_ID = hotel_room.Hotel_ID)) cheap_hotels on cheap_hotels.Human_Settlement_ID = human_settlements.Human_Settlement_ID;

-- H
select Country_Name, low_rate_to_dollar.Currency_Name, Rate_To_The_Dollar from
    (select * from currency where Rate_To_The_Dollar < 0.5) low_rate_to_dollar right join country on low_rate_to_dollar.Currency_Name = country.Currency_Name;

-- I
select Hotel_Name as `Name`, Phone_Number, Address from hotel
union
select concat_ws(' ', Surname, `Name`, Patronymic), Phone_Number, Address from client;

select * from Hotel where Phone_Number like '+34%' or Phone_Number like '+38%';