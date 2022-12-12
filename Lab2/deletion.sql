use travel_agency;

alter table Package_Tour drop primary key;
alter table Currency drop constraint CHK_Rate_To_The_Dollar;
alter table `Check` drop column Discount;
alter table Package_Tour drop foreign key FK_Package_Tour_Hotel;
truncate table package_tour;
drop table Package_Tour;
drop database travel_agency;