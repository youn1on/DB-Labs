use travel_agency;

delimiter $$
drop trigger if exists getPriceOnInsert;
create trigger getPriceOnInsert
    after insert
    on package_tour
    for each row
begin
    declare cost int;
    set cost = GetTourCost(NEW.Package_Tour_ID);
    update `check` set Sum = Sum+cost where Check_ID = NEW.Check_ID;
    if (select sum(Number_Of_People) from package_tour where Check_ID = NEW.Check_ID) > 1 then
        update `check` set Discount = Sum/20 where Check_ID = NEW.Check_ID;
    end if;
end;
delimiter ;

delimiter $$
drop trigger if exists reducePriceOnDelete;
create trigger reducePriceOnDelete
    after delete
    on package_tour
    for each row
begin
    declare cost int;
    set cost = GetTourCost(OLD.Package_Tour_ID);
    update `check` set Sum = Sum-cost where Check_ID = OLD.Check_ID;
    if (select sum(Number_Of_People) from package_tour where Check_ID = OLD.Check_ID) > 1 then
        update `check` set Discount = Sum/20 where Check_ID = OLD.Check_ID;
    else
        update `check` set Discount = 0 where Check_ID = OLD.Check_ID;
    end if;
end;
delimiter ;

delimiter $$
drop trigger if exists changePriceOnUpdate;
create trigger changePriceOnUpdate
    after update
    on package_tour
    for each row
begin
    declare cost int;
    set cost = GetTourCost(OLD.Package_Tour_ID);
    update `check` set Sum = Sum-cost where Check_ID = OLD.Check_ID;
    set cost = GetTourCost(NEW.Package_Tour_ID);
    update `check` set Sum = Sum+cost where Check_ID = NEW.Check_ID;

    if (select sum(Number_Of_People) from package_tour where Check_ID = OLD.Check_ID) > 1 then
        update `check` set Discount = Sum/20 where Check_ID = OLD.Check_ID;
    else
        update `check` set Discount = 0 where Check_ID = OLD.Check_ID;
    end if;

    if (select sum(Number_Of_People) from package_tour where Check_ID = NEW.Check_ID) > 1 then
        update `check` set Discount = Sum/20 where Check_ID = NEW.Check_ID;
    end if;
end;
delimiter ;