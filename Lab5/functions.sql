use travel_agency;

-- A
drop function if exists GetTourCost;
create function GetTourCost(tour_id int) returns int
deterministic
begin
    declare cost int;
    declare people_number int;
    declare duration int;
    declare cost_per_cheapest_room_per_night int;
    declare ticket_price int;

    select Number_Of_People into people_number from package_tour where Package_Tour_ID = tour_id;
    select datediff(Return_Date, Date_Of_Departure) into duration from package_tour where Package_Tour_ID = tour_id;

    select min(truncate(Price_Per_Night/Number_Of_Places, 0)) as price
        into cost_per_cheapest_room_per_night
        from hotel_room
        where Hotel_ID = (select Hotel_ID from package_tour where Package_Tour_ID = tour_id);

    select two_way_ticket_price
    into ticket_price
        from human_settlements
        where Human_Settlement_ID = (
            select Human_Settlement_ID
            from hotel
            where Hotel_ID = (
                select Hotel_ID from package_tour where Package_Tour_ID = tour_id));

    set cost = ticket_price*people_number+cost_per_cheapest_room_per_night*(duration-1)*people_number;
    return cost;
end;

select GetTourCost(1);

-- B
drop procedure if exists GetHotels;
create procedure GetHotels(with_adresses bool)
begin
    drop temporary table if exists hotels_contacts;
    if with_adresses then
        create temporary table hotels_contacts as
            select Hotel_Name, Address, Phone_Number from hotel;
    else
        create temporary table hotels_contacts as
            select Hotel_Name, Phone_Number from hotel;
    end if;
end;

-- call GetHotels(false);
-- select * from hotels_contacts;

drop procedure if exists ReturnHotelsForHumanSettlement;
create procedure ReturnHotelsForHumanSettlement(in human_settlement_name varchar(30))
begin
    drop temporary table if exists HotelsForHumanSettlement;
    create temporary table HotelsForHumanSettlement as
        select Hotel_Name, Address, Phone_Number from hotel where Human_Settlement_ID = (select Human_Settlement_ID from human_settlements where Name_Of_Settlement = human_settlement_name);
end;

-- call ReturnHotelsForHumanSettlement("Vorokhta");
-- select * from HotelsForHumanSettlement;