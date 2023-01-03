use travel_agency;

-- A
create or replace view cheap_hotels as
    select hotel.Hotel_ID, Human_Settlement_ID, Hotel_Name, Type, count(Room_Number) as Amount_Of_Rooms, avg(Price_Per_Night/Number_Of_Places) as Price_Per_Place from hotel, (select * from hotel_room
where Price_Per_Night/Number_Of_Places < 75 and Type = 'Suite' or Price_Per_Night/Number_Of_Places < 55 and Type = 'Deluxe') cheap_rooms
where cheap_rooms.Hotel_ID = hotel.Hotel_ID
group by Hotel_Name, Type;

-- B
create or replace view cheap_hotels_location as
    select country.Country_Name, Name_Of_Settlement, Hotel_Name, Type, Amount_Of_Rooms, Price_Per_Place from country
        inner join human_settlements on country.Country_Name = human_settlements.Country_Name
        inner join cheap_hotels on human_settlements.Human_Settlement_ID = cheap_hotels.Human_Settlement_ID;

-- C
alter view cheap_hotels_location as
    select Name_Of_Settlement, Hotel_Name, Type, Amount_Of_Rooms, Price_Per_Place from human_settlements
        inner join cheap_hotels on human_settlements.Human_Settlement_ID = cheap_hotels.Human_Settlement_ID;

-- D
show create view cheap_hotels;
