/*Group Project Values*/

USE metering_database;

/*Community Table Values*/
INSERT INTO community_T (com_id, community_name, address, rate_per_unit) VALUES
(101, 'Springfield', '20 Orchard Rd.', '50.10'),
(102, 'Arrowhead', '40 West', '40.20'),
(103, 'Diamond', '19 Charmagne Lane', '55.00'),
(104, 'Crystal', '302 Lakeland', '60.00'),
(105, 'Wonders', '500 Coplin Ave.', '49.30'),
(106, 'Willow', '250 Rivendell Dr.', '62.00'),
(107, 'Homelux', '701 Mill St.', '57.50'),
(108, 'Ecostay', '600 Holt St.', '56.00'),
(109, 'The Den', '216 Hood Ave.', '50.00'),
(110, 'Yellow Brick', '450 Bedford St.', '54.00'),
(111, 'Vinewood', '15 Burning Memory', '40.00'),
(112, 'Westward', '50 Browntown Rd.', '58.90'),
(113, 'Lighthouse', '129 Happy Ave.', '57.00'),
(114, 'Mortar', '1229 Yorkshire', '65.00'),
(115, 'Noblepark', '901 Sunburst Dr.', '70.00'),
(116, 'Cyberdrive', '789 Silicon Valley', '76.00'),
(117, 'Arasaka', '2050 D St.', '62.00'),
(118, 'Shoehill', '951 Broad Rd.', '58.80'),
(119, 'Grand Villa', '423 Central Ave.', '66.50'),
(120, 'Olympia', '888 Shearwood Dr.', '44.00');

/*Contact Person Table Values*/
INSERT INTO contact_person_T (com_id, contact_person) VALUES
(101, 'Shane David'),
(102, 'Jack Klaus'),
(103, 'Cathy Nguyen'),
(104, 'Shaun Pierce'),
(105, 'Jill Sanders'),
(106, 'Jackie Summers'),
(107, 'Peter Griffin'),
(108, 'Johnny Storm'),
(109, 'Dimple Roman'),
(110, 'Anthony Stark'),
(111, 'Liam Jacobs'),
(112, 'Luis Aries'),
(113, 'Rob Galloway'),
(114, 'Bailey Williams'),
(115, 'Charlotte Payne'),
(116, 'Julian Huntington'),
(117, 'Patrick Stone'),
(118, 'Jordan Swinger'),
(119, 'Jane Foster'),
(120, 'John Doe');

/*Resident Table Values*/
INSERT INTO resident_T (user_id, resident_name, admin_, user_, com_id) VALUES
(1001, 'Lolita Williams', 'No', 'Yes', 101),
(1002, 'Shane David', 'Yes', 'Yes', 101),
(1003, 'Troy Anderson', 'No', 'Yes', 101),
(1004, 'Cindy Graham', 'Yes', 'Yes', 101),
(1005, 'Jack Klaus', 'Yes', 'Yes', 102),
(1006, 'Betty Rogers', 'Yes', 'Yes', 102),
(1007, 'Steve Rogers', 'No', 'Yes', 102),
(1008, 'Cathy Nguyen', 'Yes', 'Yes', 103),
(1009, 'Stephen Strange', 'No', 'Yes', 103),
(1010, 'Natasha Banner', 'No', 'Yes', 106),
(1011, 'Jackie Summers', 'Yes', 'Yes', 106),
(1012, 'Scott Summers', 'Yes', 'Yes', 106),
(1013, 'Anthony Stark', 'Yes', 'Yes', 110),
(1014, 'Pepper Potts', 'No', 'Yes', 110),
(1015, 'Pete Parker', 'No', 'Yes', 110),
(1016, 'Julian Huntington', 'Yes', 'Yes', 116),
(1017, 'Martha Huntington', 'Yes', 'Yes', 116),
(1018, 'Bill Byers', 'No', 'Yes', 116),
(1019, 'Felipe Loboz', 'No', 'Yes', 118),
(1020, 'Jordan Swinger', 'Yes', 'Yes', 118),
(1021, 'Shaun Pierce', 'Yes', 'Yes', 104),
(1022, 'Elena Fisher', 'Yes', 'Yes', 104),
(1023, 'Nathan Drake', 'No', 'Yes', 104),
(1024, 'Eddie Raja', 'No', 'Yes', 104),
(1025, 'Jill Sanders', 'Yes', 'Yes', 105),
(1026, 'Porter Sanders', 'Yes', 'Yes', 105),
(1027, 'Sandy Fleek', 'No', 'Yes', 105),
(1028, 'Peter Griffin', 'Yes', 'Yes', 107),
(1029, 'Meg Price', 'Yes', 'Yes', 107),
(1030, 'Stu Price', 'No', 'Yes', 107),
(1031, 'Rob Galloway', 'Yes', 'Yes', 113),
(1032, 'Cindy Galloway', 'Yes', 'Yes', 113),
(1033, 'Eric Pinkus', 'Yes', 'Yes', 113),
(1034, 'Bailey Williams', 'Yes', 'Yes', 114),
(1035, 'Ned Flanders', 'No', 'Yes', 114),
(1036, 'Finn Blaster', 'No', 'Yes', 114);

/*Admin Table Values*/
INSERT INTO admin_T (auser_id, read_and_write_access) VALUES
(1002, 'Yes'),
(1004, 'Yes'),
(1005, 'Yes'),
(1006, 'Yes'),
(1008, 'Yes'),
(1011, 'Yes'),
(1012, 'Yes'),
(1013, 'Yes'),
(1016, 'Yes'),
(1017, 'Yes'),
(1020, 'Yes'),
(1021, 'Yes'),
(1022, 'Yes'),
(1025, 'Yes'),
(1026, 'Yes'),
(1028, 'Yes'),
(1029, 'Yes'),
(1031, 'Yes'),
(1032, 'Yes'),
(1033, 'Yes'),
(1034, 'Yes');

/*User Table Values*/
INSERT INTO user_T (uuser_id, read_only_access) VALUES
(1001, 'Yes'),
(1002, 'Yes'),
(1003, 'Yes'),
(1004, 'Yes'),
(1005, 'Yes'),
(1006, 'Yes'),
(1007, 'Yes'),
(1008, 'Yes'),
(1009, 'Yes'),
(1010, 'Yes'),
(1011, 'Yes'),
(1012, 'Yes'),
(1013, 'Yes'),
(1014, 'Yes'),
(1015, 'Yes'),
(1016, 'Yes'),
(1017, 'Yes'),
(1018, 'Yes'),
(1019, 'Yes'),
(1020, 'Yes'),
(1021, 'Yes'),
(1022, 'Yes'),
(1023, 'Yes'),
(1024, 'Yes'),
(1025, 'Yes'),
(1026, 'Yes'),
(1027, 'Yes'),
(1028, 'Yes'),
(1029, 'Yes'),
(1030, 'Yes'),
(1031, 'Yes'),
(1032, 'Yes'),
(1033, 'Yes'),
(1034, 'Yes'),
(1035, 'Yes'),
(1036, 'Yes');

/*Bill Table Values*/
INSERT INTO bill_T (bill_nbr, monthly_price, monthly_usage, com_id) VALUES
(01, 150, 18000, 101),
(02, 200, 19000, 102),
(03, 134, 17500, 103),
(04, 300, 20200, 104),
(05, 278, 19500, 105),
(06, 47, 12000, 106),
(07, 45, 11400, 107),
(08, 157, 18300, 108),
(09, 90, 16000, 109),
(10, 290, 20000, 110),
(11, 213, 19200, 111),
(12, 245, 19600, 112),
(13, 180, 18700, 113),
(14, 109, 15000, 114),
(15, 56, 13000, 115),
(16, 234, 19400, 116),
(17, 215, 19150, 117),
(18, 190, 18950, 118),
(19, 100, 16500, 119),
(20, 110, 16700, 120);

/*House Table Values*/
INSERT INTO house_T (house_nbr, no_of_meters, bill_nbr) VALUES
(300, 2, 01),
(301, 5, 02),
(302, 1, 03),
(303, 1, 04),
(304, 4, 05),
(305, 2, 06),
(306, 3, 07),
(307, 4, 08),
(308, 5, 09),
(309, 1, 10),
(310, 2, 11),
(311, 3, 12),
(312, 4, 13),
(313, 5, 14),
(314, 5, 15),
(315, 4, 16),
(316, 3, 17),
(317, 2, 18),
(318, 1, 19),
(319, 2, 20);

/*Meter Table Values*/
INSERT INTO meter_T (meter_id,house_nbr) VALUES
(200, 300),
(201, 301),
(202, 302),
(203, 303),
(204, 304),
(205, 305),
(206, 306),
(207, 307),
(208, 308),
(209, 309),
(210, 310),
(211, 311),
(212, 312),
(213, 313),
(214, 314),
(215, 315),
(216, 316),
(217, 317),
(218, 318),
(219,319);


/*Reading Table Values*/
INSERT INTO reading_T (meter_id,reading,date_stamp, time_stamp ) VALUES
(200,526,'2022-01-01','15:10:10'),
(201,1000,'2022-03-15','12:10:10'),
(202,852,'2022-03-20','14:30:00'),
(203,234,'2022-04-03','09:00:00'),
(204,324,'2022-04-18','15:00:00'),
(205,678,'2022-04-24','16:25:10'),
(206,567,'2022-05-02','10:10:30'),
(207,456,'2022-05-10','11:15:00'),
(208,987,'2022-05-28','13:12:10'),
(209,367,'2022-07-06','12:00:30'),
(210, 543,'2022-07-19','17:00:00'),
(211,356,'2022-08-11','15:00:00'),
(212,765,'2022-08-12','14:30:00'),
(213,234,'2022-08-25','15:00:00'),
(214,876,'2022-09-07','11:45:10'),
(215,1000,'2022-09-13','13:20:40'),
(216,456,'2022-09-22','14:10:00'),
(217,789,'2022-10-15','12:00:00'),
(218,990,'2022-10-24','13:00:00'),
(219,500,'2022-11-02','14:35:10');


/*Owned House Table Values*/
INSERT INTO owned_house_T (user_id, house_nbr) VALUES
(1020, 300),
(1021, 301),
(1022, 302),
(1023, 303),
(1025, 304),
(1026, 305),
(1027, 306),
(1029, 307),
(1030, 308),
(1014,309),
(1013,310),
(1012,311),
(1010, 312),
(1009,313),
(1008, 314),
(1007, 315),
(1006, 316),
(1005, 317),
(1002,318),
(1001,319);

/*View Table Values*/
INSERT INTO view_T (house_nbr, meter_id, daily_usage, daily_average, monthly_usage, monthly_average) VALUES
(300, 200, 95, 90, 2850, 2500),
(301, 201, 100, 92, 3000, 2800),
(302, 202, 110, 95, 3200, 3000),
(303, 203, 95, 89, 2900, 2500),
(304, 204, 120, 100, 3400, 3100),
(305, 205, 109, 90, 3000, 2900),
(306, 206, 115, 98, 3300, 3000),
(307, 207, 100, 90, 2900, 2700),
(308, 208, 115, 98, 3200, 3000),
(309, 209, 90, 80, 2500, 2000),
(310, 210, 115, 98, 3300, 3000),
(311, 211, 100, 95, 3000, 2900),
(312, 212, 120, 100, 4000, 3700),
(313, 213, 140, 130, 4200, 3900),
(314, 214, 90, 85, 2800, 2450),
(315, 215, 70, 55, 1500, 1200),
(316, 216, 200, 180, 6200, 5900),
(317, 217, 110, 95, 3200, 2800),
(318, 218, 150, 120, 4500, 4000),
(319, 219, 105, 95, 2950, 2700);

/*Error Report Table Values*/
INSERT INTO error_report_T (error_report_id, issue_type, changes_made, auser_id, meter_id) VALUES
(5000, 'small reading', 'removed debris in pipe and meter', 1002, 200),
(5001, 'small reading', 'removed debris in pipe and meter', 1002, 200),
(5002, 'reading error', 'replaced water meter', 1005, 201),
(5003, 'huge reading', 'fixed pipe', 1006, 201),
(5004, 'small reading', 'cleaned the meter', 1008, 202),
(5005, 'huge reading', 'fixed pipe', 1011, 205),
(5006, 'huge reading', 'cleaned the meter', 1012, 205),
(5007, 'huge reading', 'replaced the meter', 1012, 205),
(5008, 'reading error', 'cleaned the pipe', 1013, 209),
(5009, 'reading error', 'cleaned the meter', 1013, 209),
(5010, 'huge reading', 'replaced the meter', 1013, 209),
(5011, 'small reading', 'cleaned the meter', 1016, 215),
(5012, 'small reading', 'removed debris from pipe', 1016, 215),
(5013, 'small reading', 'meter reset', 1016, 215),
(5014, 'reading error', 'replaced the meter', 1016, 215),
(5015, 'small reading', 'removed debris in pipe and meter', 1020, 217),
(5016, 'huge reading', 'fixed pipe', 1021, 203),
(5017, 'huge reading', 'replaced the meter', 1022, 203),
(5018, 'reading error', 'replaced the meter', 1025, 204),
(5019, 'reading error', 'replaced the meter', 1031, 212);

/*Error Reading Table Values*/
INSERT INTO error_reading_T (error_report_id, before_value, before_date, before_time, after_value, after_date, after_time) VALUES
(5000, '200', '2021-11-22', '15:01:30', '300', '2021-12-15', '15:10:10'),
(5001, '300', '2021-12-18', '15:10:30', '526', '2022-01-01', '15:10:10'),
(5002, '0', '2022-01-15', '11:00:00', '500', '2022-02-01', '11:00:00'),
(5003, '2000', '2022-03-01', '11:00:00', '1000', '2022-02-01', '12:10:10'),
(5004, '400', '2022-03-15', '14:00:00', '852', '2022-03-20', '14:30:00'),  
(5005, '1800', '2022-02-20', '15:00:00', '1000', '2022-03-05', '15:30:00'),
(5006, '1500', '2022-03-20', '14:45:00', '900', '2022-03-30', '15:40:00'),
(5007, '1900', '2022-04-20', '14:45:00', '678', '2022-04-24', '16:25:10'),
(5008, '0', '2022-05-20', '12:45:00', '700', '2022-05-25', '12:40:00'),
(5009, '0', '2022-06-20', '12:00:00', '400', '2022-06-28', '12:15:00'),
(5010, '2000', '2022-07-01', '12:45:00', '367', '2022-07-06', '12:00:30'),
(5011, '100', '2022-07-11', '13:45:00', '900', '2022-07-20', '13:00:30'),
(5012, '50', '2022-07-25', '13:25:00', '950', '2022-08-06', '13:20:30'),
(5013, '300', '2022-08-11', '13:15:00', '800', '2022-08-25', '13:00:50'),
(5014, '0', '2022-09-05', '13:20:00', '1000', '2022-09-13', '13:20:40'),
(5015, '300', '2022-10-08', '12:20:00', '789', '2022-10-15', '12:00:00'),
(5016, '3000', '2022-02-08', '09:20:00', '300', '2022-02-15', '09:00:00'),
(5017, '1000', '2022-03-25', '09:10:00', '234', '2022-04-03', '09:00:00'),
(5018, '0', '2022-04-11', '15:02:00', '324', '2022-04-18', '15:00:00'),
(5019, '0', '2022-08-08', '14:20:00', '765', '2022-08-12', '14:30:00');
