use travel_agency;

insert into Currency(Currency_Name, Rate_To_The_Dollar) value ('USD', 1);
insert into Currency(Currency_Name, Rate_To_The_Dollar) value ('EUR', 1.06);
insert into Currency(Currency_Name, Rate_To_The_Dollar) value ('UAH', 0.027);
insert into Currency(Currency_Name, Rate_To_The_Dollar) value ('PLN', 0.23);
insert into Currency(Currency_Name, Rate_To_The_Dollar) value ('AUD', 0.68);
insert into Currency(Currency_Name, Rate_To_The_Dollar) value ('CAD', 0.73);
insert into Currency(Currency_Name, Rate_To_The_Dollar) value ('CHF', 1.07);
insert into Currency(Currency_Name, Rate_To_The_Dollar) value ('GBP', 1.23);
insert into Currency(Currency_Name, Rate_To_The_Dollar) value ('JPY', 0.0073);
insert into Currency(Currency_Name, Rate_To_The_Dollar) value ('INR', 0.012);
insert into Currency(Currency_Name, Rate_To_The_Dollar) value ('CNY', 0.14);
insert into Currency(Currency_Name, Rate_To_The_Dollar) value ('PHP', 0.018);
insert into Currency(Currency_Name, Rate_To_The_Dollar) value ('GEL', 0.38);
insert into Currency(Currency_Name, Rate_To_The_Dollar) value ('MYR', 0.23);
insert into Currency(Currency_Name, Rate_To_The_Dollar) value ('BRL', 0.19);



insert into Country (Country_Name, Currency_Name) value ('USA', 'USD');
insert into Country (Country_Name, Currency_Name) value ('Ukraine', 'UAH');
insert into Country (Country_Name, Currency_Name) value ('Greece', 'EUR');
insert into Country (Country_Name, Currency_Name) value ('Poland', 'PLN');
insert into Country (Country_Name, Currency_Name) value ('Austria', 'EUR');
insert into Country (Country_Name, Currency_Name) value ('Belgium', 'EUR');
insert into Country (Country_Name, Currency_Name) value ('Italy', 'EUR');
insert into Country (Country_Name, Currency_Name) value ('Netherlands', 'EUR');
insert into Country (Country_Name, Currency_Name) value ('Spain', 'EUR');
insert into Country (Country_Name, Currency_Name) value ('Australia', 'AUD');
insert into Country (Country_Name, Currency_Name) value ('Canada','CAD');
insert into Country (Country_Name, Currency_Name) value ('Switzerland', 'CHF');
insert into Country (Country_Name, Currency_Name) value ('Great Britain', 'GBP');
insert into Country (Country_Name, Currency_Name) value ('Japan', 'JPY');
insert into Country (Country_Name, Currency_Name) value ('India', 'INR');
insert into Country (Country_Name, Currency_Name) value ('China', 'CNY');
insert into Country (Country_Name, Currency_Name) value ('Philippines', 'PHP');
insert into Country (Country_Name, Currency_Name) value ('Georgia', 'GEL');
insert into Country (Country_Name, Currency_Name) value ('Malaysia', 'MYR');
insert into Country (Country_Name, Currency_Name) value ('Brazil', 'BRL');


insert into Human_Settlements (Country_Name, Name_Of_Settlement, Climate, Two_Way_Ticket_Price) value ('USA', 'New York',
                'The climate of New York City features a humid subtropical variety, with parts of the city transitioning into a humid continental climate. This gives the city cool, wet winters and hot, humid summers with plentiful rainfall all year round.', 375);
insert into Human_Settlements (Country_Name, Name_Of_Settlement, Climate, Two_Way_Ticket_Price) value ('Ukraine', 'Vorokhta',
                'The Carpathian climate is moderately continental. Winter is mild with lots of snow, spring is rainy, summers not hot, autumn is dry.', 50);
insert into Human_Settlements (Country_Name, Name_Of_Settlement, Climate, Two_Way_Ticket_Price) value ('Greece', 'Athens',
                'In Athens, the capital of Greece, the climate is Mediterranean, with mild, moderately rainy winters and hot, sunny summers.', 98);
insert into Human_Settlements (Country_Name, Name_Of_Settlement, Climate, Two_Way_Ticket_Price) value ('Poland', 'Wroclaw',
                'The climate of Wroclaw is moderately continental, characterized by cold winters, with temperatures around freezing (0 °C or 32 °F), and quite warm summers.', 87);
insert into Human_Settlements (Country_Name, Name_Of_Settlement, Climate, Two_Way_Ticket_Price) value ('Austria', 'Vienna',
                'In Vienna, the summers are warm; the winters are very cold, snowy, and windy; and it is partly cloudy year round.', 110);
insert into Human_Settlements (Country_Name, Name_Of_Settlement, Climate, Two_Way_Ticket_Price) value ('Belgium', 'Antwerp',
                'In Antwerp, a city located in the region of Flanders, in the north of Belgium, the climate is sub-oceanic, humid and rainy, influenced by the Atlantic Ocean: winters are cold but not freezing, while summers are mild or pleasantly warm.', 275);
insert into Human_Settlements (Country_Name, Name_Of_Settlement, Climate, Two_Way_Ticket_Price) value ('Italy', 'Rome',
                'Rome has a Mediterranean climate with cool winters and warm and hot summers.', 120);
insert into Human_Settlements (Country_Name, Name_Of_Settlement, Climate, Two_Way_Ticket_Price) value ('Netherlands', 'Amsterdam',
                'Amsterdam has an oceanic climate, similar to that of Great Britain. The climate in Amsterdam is strongly influenced by the North Sea.', 130);
insert into Human_Settlements (Country_Name, Name_Of_Settlement, Climate, Two_Way_Ticket_Price) value ('Spain', 'Madrid',
                'Madrid''s climate is one of Europe''s healthiest thanks to the fresh mountain air flowing into the city from nearly all sides, but its altitude can also mean significant changes from season to season.', 100);
insert into Human_Settlements (Country_Name, Name_Of_Settlement, Climate, Two_Way_Ticket_Price) value ('Australia', 'Canberra',
                'In Canberra, the summers are warm, the winters are very cold, and it is partly cloudy year round.', 2200);
insert into Human_Settlements (Country_Name, Name_Of_Settlement, Climate, Two_Way_Ticket_Price) value ('Canada', 'Ottawa',
                'In Ottawa, the summers are long, warm, and partly cloudy and the winters are freezing, snowy, and mostly cloudy.', 1100);
insert into Human_Settlements (Country_Name, Name_Of_Settlement, Climate, Two_Way_Ticket_Price) value ('Switzerland', 'Bern',
                'The climate of Bern is moderately continental, with cold winters and warm summers.', 300);
insert into Human_Settlements (Country_Name, Name_Of_Settlement, Climate, Two_Way_Ticket_Price) value ('Great Britain', 'London',
                'London features a humid temperate oceanic climate. This gives the city cool winters and warm to hot summers', 107);
insert into Human_Settlements (Country_Name, Name_Of_Settlement, Climate, Two_Way_Ticket_Price) value ('Japan', 'Tokyo',
                 'In Tokyo, the Japanese capital, the climate is temperate, with fairly mild, sunny winters and hot, humid and rainy summers.', 1390);
insert into Human_Settlements (Country_Name, Name_Of_Settlement, Climate, Two_Way_Ticket_Price) value ('India', 'New Delhi',
                 'In New Delhi, the capital of India, the climate is subtropical, with a very mild and sunny winter, a very hot season from mid-March to mid-June.', 290);
insert into Human_Settlements (Country_Name, Name_Of_Settlement, Climate, Two_Way_Ticket_Price) value ('China', 'Shanghai',
                 'In Shanghai, the summers are hot, oppressive, wet, and mostly cloudy and the winters are very cold, windy, and partly cloudy.', 625);
insert into Human_Settlements (Country_Name, Name_Of_Settlement, Climate, Two_Way_Ticket_Price) value ('Philippines', 'Manila',
                 'The climate of Manila is tropical, hot all year round, with a dry season from January to April and a rainy season from May to December.', 400);
insert into Human_Settlements (Country_Name, Name_Of_Settlement, Climate, Two_Way_Ticket_Price) value ('Georgia', 'Tbilisi',
                 'In Tbilisi, the summers are warm, dry, and mostly clear and the winters are long, very cold, snowy, and partly cloudy.', 140);
insert into Human_Settlements (Country_Name, Name_Of_Settlement, Climate, Two_Way_Ticket_Price) value ('Malaysia', 'Kuala Lumpur',
                 'Throughout the year it is nice and sunny in Kuala Lumpur. The only thing to keep in mind is the high humidity in some periods of the year.', 410);
insert into Human_Settlements (Country_Name, Name_Of_Settlement, Climate, Two_Way_Ticket_Price) value ('Brazil', 'Brasilia',
                 'In Brasília, the wet season is overcast, the dry season is mostly clear, and it is warm year round.', 550);

set global local_infile = true;
load data local infile 'C:/Users/youn1on/Desktop/Labs/3_semester/DB/Lab2/clients.csv'
into table Client
fields terminated by ','
enclosed by '"'
lines terminated by '\n';

load data local infile 'C:/Users/youn1on/Desktop/Labs/3_semester/DB/Lab2/checks.csv'
into table `Check`
fields terminated by ',';

insert into Hotel (Hotel_Name, Human_Settlement_ID, Address, Phone_Number) value ('Continental', 1, '56 Highland Rd.', '+14844731457');
insert into Hotel (Hotel_Name, Human_Settlement_ID, Address, Phone_Number) value ('Kazka', 2, 'Pokrovska 152a', '+380935785167');
insert into Hotel (Hotel_Name, Human_Settlement_ID, Address, Phone_Number) value ('Acropolis', 3, 'Tsimiski 102', '+302112347567');
insert into Hotel (Hotel_Name, Human_Settlement_ID, Address, Phone_Number) value ('Dream4You', 4, 'Księcia Witolda 25', '+48450988778');
insert into Hotel (Hotel_Name, Human_Settlement_ID, Address, Phone_Number) value ('Apollo Hotel', 5, 'Apollogasse 32', '+436755880871');
insert into Hotel (Hotel_Name, Human_Settlement_ID, Address, Phone_Number) value ('Sapphire House Antwerp', 6, 'Lange Nieuwstraat 20-24', '+32466904418');
insert into Hotel (Hotel_Name, Human_Settlement_ID, Address, Phone_Number) value ('Hotel Boutique Nazionale', 7, 'Via Nazionale 66', '+3905231715672');
insert into Hotel (Hotel_Name, Human_Settlement_ID, Address, Phone_Number) value ('Eden Hotel', 8, 'Amstel 144', '+31203698115');
insert into Hotel (Hotel_Name, Human_Settlement_ID, Address, Phone_Number) value ('LaNave', 9, 'Cadarso 19', '+34919931149');
insert into Hotel (Hotel_Name, Human_Settlement_ID, Address, Phone_Number) value ('South Gladstone', 10, '83 Toolooa Street', '+61480053306');
insert into Hotel (Hotel_Name, Human_Settlement_ID, Address, Phone_Number) value ('Les Suites Hotel', 11 , '130 Besserer Street', '+17787600967');
insert into Hotel (Hotel_Name, Human_Settlement_ID, Address, Phone_Number) value ('Melarose Feng Shui', 12, 'Greifswalder Str. 199', '+41313920190');
insert into Hotel (Hotel_Name, Human_Settlement_ID, Address, Phone_Number) value ('Leonardo Royal London', 13, '10 Godliman Street', '+442045771201');
insert into Hotel (Hotel_Name, Human_Settlement_ID, Address, Phone_Number) value ('Reimi Mondo', 14, 'Higashi 36-jokita', '+81822456416');
insert into Hotel (Hotel_Name, Human_Settlement_ID, Address, Phone_Number) value ('Paramount Hotel', 15, '21, O/s Shahpur Gate', '+9112345678910');
insert into Hotel (Hotel_Name, Human_Settlement_ID, Address, Phone_Number) value ('Four Seasons Hotel Hangzhou', 16, 'Cheng Du Shuang Liu Dong Sheng Jie Dao 89hao Si Ji Hua Yu 10-1-2', '+865718829');
insert into Hotel (Hotel_Name, Human_Settlement_ID, Address, Phone_Number) value ('Henann Resort Aloha Beach', 17, '48 Alona Beach Rd', '+63385029141');
insert into Hotel (Hotel_Name, Human_Settlement_ID, Address, Phone_Number) value ('Hotel IMERETI', 18, 'agmasheneblis gamziri 95a', '+995325425042');
insert into Hotel (Hotel_Name, Human_Settlement_ID, Address, Phone_Number) value ('Legoland Malaysia Hotel', 19, 'B 46 Lrg Rahim Kajai 14 Taman Tun Dr Ismail', '+601130252602');
insert into Hotel (Hotel_Name, Human_Settlement_ID, Address, Phone_Number) value ('Royal Tulip Brasília Alvorada', 20, 'Rua João das Heras 48', '+5521910364253');


load data local infile 'C:/Users/youn1on/Desktop/Labs/3_semester/DB/Lab2/rooms.csv'
into table Hotel_Room
fields terminated by ',';

load data local infile 'C:/Users/youn1on/Desktop/Labs/3_semester/DB/Lab2/tours.csv'
into table Package_Tour
fields terminated by ','
enclosed by '"'
lines terminated by '\n';