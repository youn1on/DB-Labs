use travel_agency;

-- A
-- оскільки в MySQL немає змінних типу Table, створимо тимчасову таблицю
drop procedure if exists CreateTempTable;
create procedure CreateTempTable()
begin
    create temporary table if not exists room_prices as
        select Hotel_Name, Type, count(Room_Number) as Amount_Of_Rooms, truncate(avg(Price_Per_Night/Number_Of_Places), 2) as Price_Per_Place
        from hotel inner join hotel_room
        on hotel_room.Hotel_ID = hotel.Hotel_ID
        group by Hotel_Name, Type;
end;

-- B
drop procedure if exists DeleteTempTable;
create procedure DeleteTempTable()
begin
    drop temporary table if exists room_prices;
end;

-- call CreateTempTable();
-- select * from room_prices;
-- call DeleteTempTable();

-- C
drop procedure if exists UpdateRoomCost;
create procedure UpdateRoomCost(in costDifference int, in hotelID int)
begin
    set @room_number = 1;
    while EXISTS(SELECT * from hotel_room where Hotel_ID = hotelID and Room_Number = @room_number) do
    update hotel_room set Price_Per_Night = Price_Per_Night+costDifference where Hotel_ID = hotelID and Room_Number = @room_number;
    set @room_number = @room_number+1;
end while;
end;

-- select * from hotel_room where Hotel_ID = 3;
-- call UpdateRoomCost(15, 3);
-- select * from hotel_room where Hotel_ID = 3;
-- call UpdateRoomCost(-15, 3);
-- select * from hotel_room where Hotel_ID = 3;

-- D
drop procedure if exists CountClients;
create procedure CountClients()
begin
    select count(Client_ID) as ClientsAmount from client;
end;

-- call CountClients();

-- E
drop procedure if exists CountRoomsInHotel;
create procedure CountRoomsInHotel(in hotelName varchar(50))
begin
    select count(Room_Number) from hotel_room where Hotel_ID = (select Hotel_ID from hotel where Hotel_Name = hotelName);
end;

-- call CountRoomsInHotel("Kazka");

-- F
drop procedure if exists ReturnRateToTheDollar;
create procedure ReturnRateToTheDollar(in currencyName varchar(10), out rate double)
begin
    select Rate_To_The_Dollar into rate from currency where Currency_Name = currencyName;
end;

-- call ReturnRateToTheDollar("USD", @rate);
-- select @rate as rate;

-- G
drop procedure if exists UpdateTwoWayTicketPrice;
create procedure UpdateTwoWayTicketPrice(in humanSettlementID int, in new_cost int)
begin
    update human_settlements
        set Two_Way_Ticket_Price = new_cost where Human_Settlement_ID = humanSettlementID;
end;

-- select * from human_settlements where Human_Settlement_ID = 3;
-- call UpdateTwoWayTicketPrice(3, 100);
-- select * from human_settlements where Human_Settlement_ID = 3;
-- call UpdateTwoWayTicketPrice(3, 98);
-- select * from human_settlements where Human_Settlement_ID = 3;

-- H
drop procedure if exists CountAveragePriceForHotel;
create procedure CountAveragePriceForHotel(in hotelID int)
begin
    select AVG(Price_Per_Night) from hotel_room where Hotel_ID = hotelID;
end;

-- call CountAveragePriceForHotel(2);
