use travel_agency;

-- A, B, C
delimiter $$
drop procedure if exists GetHotelList;
create procedure GetHotelList (inout hotelList varchar(600))
begin
	declare flag integer default 0;
	declare curHotel varchar(30) default '';

	declare hotelCursor
		cursor for
			select Hotel_Name from hotel order by Hotel_Name desc;

	declare continue handler
        for not found set flag = 1;

	open hotelCursor;

	get_hotels: loop
		fetch hotelCursor into curHotel;
		if flag = 1 then
			leave get_hotels;
		end if;

		set hotelList = concat(curHotel,', ',hotelList);
	end loop get_hotels;
	close hotelCursor;

end$$
delimiter ;

set @hotel_list = '';
call GetHotelList(@hotel_list);
select @hotel_list;