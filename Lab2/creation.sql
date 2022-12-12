drop schema travel_agency;

create schema travel_agency;

use travel_agency;

create table Client(
    Client_ID int auto_increment,
    Surname varchar(30) not null,
    `Name` varchar(30) not null,
    Patronymic varchar(20),
    Address varchar(150) not null,
    Phone_Number varchar(16) not null,
    constraint PK_Client primary key (Client_ID),
    constraint CHK_Surname check (regexp_like(Surname, '^[A-ZА-ЯЇҐЄ][a-zа-яїґє]*(?:-[A-ZА-ЯЇҐЄ][a-zа-яїґє]*)?$', 'c')),
    constraint CHK_Name check (regexp_like(`Name`, '^[A-ZА-ЯЇҐЄ][a-zа-яґїє]*(?:-[A-ZА-ЯҐЄЇ][a-zа-яґєї]*)?$', 'c')),
    constraint CHK_Patronymic check (regexp_like(Patronymic, '^[A-ZА-ЯЇҐЄ][a-zа-яґїє]*$', 'c') or Patronymic is null)
);

create table `Check`(
    Check_ID int auto_increment,
    `Date` datetime not null default now(),
    Discount int not null default 0,
    Client_ID int not null,
    constraint PK_Check primary key (Check_ID),
    constraint FK_Check_Client foreign key (Client_ID)
        references Client(Client_ID),
    constraint CHK_Discount check (Discount >= 0)
);

create table Currency(
    Currency_Name varchar(10) not null,
    Rate_To_The_Dollar double,
    constraint PK_Currency primary key (Currency_Name),
    constraint CHK_Currency_Name check (regexp_like(Currency_Name, '^[A-Z]+$', 'c')),
    constraint CHK_Rate_To_The_Dollar check(Rate_To_The_Dollar > 0)
);

create table Country(
    Country_Name varchar(30) not null,
    Currency_Name varchar(10) not null,
    constraint PK_Country primary key (Country_Name),
    constraint FK_Country_Currency foreign key (Currency_Name) references Currency(Currency_Name),
    constraint CHK_Country_Name check (regexp_like(Country_Name, '^([A-Z][a-z]*[ -]?)+$', 'c'))
);

create table Human_Settlements(
    Human_Settlement_ID int auto_increment,
    Country_Name varchar(30) not null,
    Name_Of_Settlement varchar(30) not null,
    Climate varchar(250) not null,
    Two_Way_Ticket_Price int(8),
    constraint PK_Human_Settlement primary key (Human_Settlement_ID),
    constraint FK_Human_Settlement_Country foreign key (Country_Name)
        references Country(Country_Name),
    constraint CHK_Two_Way_Ticket_Price check(Two_Way_Ticket_Price > 0),
    constraint CHK_Name_Of_Settlement  check (regexp_like(Name_Of_Settlement, '^([A-Z][a-z]*[ -]?)+$', 'c'))
    );

create table Hotel(
    Hotel_ID int auto_increment,
    Hotel_Name varchar(50) not null,
    Human_Settlement_ID int not null,
    Address varchar(100) not null,
    Phone_Number varchar(16) not null,
    constraint PK_Hotel primary key (Hotel_ID),
    constraint FK_Hotel_Human_Settlement foreign key (Human_Settlement_ID)
        references Human_Settlements(Human_Settlement_ID)
    );

create table Hotel_Room(
    Hotel_ID int not null,
    Room_Number int(10) not null,
    Price_Per_Night int(10) not null,
    Type enum('Standard','Deluxe','Connecting','Suite','Apartment-style') not null,
    Number_Of_Places int(2) not null,
    constraint PK_Hotel_Room primary key (Hotel_ID, Room_Number),
    constraint FK_Hotel_Room_Hotel foreign key (Hotel_ID)
        references Hotel(Hotel_ID),
    constraint CHK_Price_Per_Night check(Price_Per_Night > 0)
  );

create table Package_Tour(
    Package_Tour_ID int not null auto_increment,
    Check_ID int not null,
    Hotel_ID int not null,
    Date_Of_Departure datetime not null,
    Return_Date datetime not null,
    Number_Of_People tinyint not null,
    constraint PK_Package_Tour primary key (Package_Tour_ID),
    constraint FK_Package_Tour_Check foreign key (Check_ID)
        references `Check`(Check_ID),
    constraint FK_Package_Tour_Hotel foreign key (Hotel_ID)
        references Hotel(Hotel_ID),
    constraint CHK_Number_Of_People check (Number_Of_People > 0)
);



