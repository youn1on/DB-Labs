use travel_agency;

alter table Human_Settlements modify column Two_Way_Ticket_Price int not null;
alter table Package_Tour add column PackageTourID int not null;
alter table Package_Tour add constraint PK_Package_Tour primary key Package_Tour(PackageTourID);
alter table Package_Tour rename column Date_Of_Departure to DepartureDate;
alter table Package_Tour drop primary key;
alter table Currency drop constraint CHK_Rate_To_The_Dollar;
alter table Hotel add constraint UNIQUE_Address unique (Address);
alter table Country alter Currency_Name set default 'USD';
