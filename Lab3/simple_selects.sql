use travel_agency;

-- A
select Country_Name from country
where Currency_Name = 'EUR';

-- B
select Country_Name, Name_Of_Settlement, Two_Way_Ticket_Price from human_settlements
where Two_Way_Ticket_Price < 100;

-- C
select * from hotel_room
where Price_Per_Night < 100 and Type = 'Suite';

select Hotel_Name, Phone_Number from Hotel
where Phone_Number like '+38%' or Phone_Number like '+41%';

select Hotel_Name, Address, Phone_Number from hotel
where not Hotel_ID = 1;

-- D
select * from hotel_room
where Price_Per_Night/Number_Of_Places < 75 and Type = 'Suite' or Price_Per_Night/Number_Of_Places < 55 and Type = 'Deluxe';

-- E
select Hotel_ID, Room_Number, Price_Per_Night/Number_Of_Places as Price_Per_Place from hotel_room;

select * from package_tour
where DATEDIFF(Return_Date, Date_Of_Departure) < 5
limit 15;

-- F
select * from country
where Currency_Name in ('USD', 'EUR');

select Package_Tour_ID, Check_ID, Date_Of_Departure from package_tour
where Date_Of_Departure between '2023-02-19' and '2023-03-01';

select Client_ID, Surname, `Name`, Patronymic from client
where Patronymic like '%вна' and `Name` like 'С%';

select Client_ID, Surname, `Name`, Patronymic, Address from client
where Patronymic is null;