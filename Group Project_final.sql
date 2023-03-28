/*Group 5 Database*/

CREATE DATABASE metering_database;

USE metering_database;

/*Community Table*/
CREATE TABLE community_T
(com_id int(11) AUTO_INCREMENT NOT NULL,
community_name varchar(50) NOT NULL,
address varchar(50) NOT NULL,
rate_per_unit double NOT NULL,
CONSTRAINT community_pk PRIMARY KEY(com_id));

/*Contact Person Table*/
CREATE TABLE contact_person_T
(com_id int(11) NOT NULL,
contact_person varchar(50) NOT NULL,
CONSTRAINT contact_person_pk PRIMARY KEY(com_id, contact_person),
CONSTRAINT contact_person_fk FOREIGN KEY(com_id) REFERENCES community_T(com_id) ON UPDATE CASCADE ON DELETE RESTRICT);

/*Resident Table*/
CREATE TABLE resident_T
(user_id int(11) AUTO_INCREMENT NOT NULL,
resident_name varchar(50) NOT NULL,
admin_ varchar(3) NOT NULL,
user_ varchar(3) NOT NULL,
com_id int(11),
CONSTRAINT resident_pk PRIMARY KEY(user_id),
CONSTRAINT resident_fk FOREIGN KEY(com_id) REFERENCES community_T(com_id) ON UPDATE CASCADE ON DELETE RESTRICT);

/*Admin Table*/
CREATE TABLE admin_T
(auser_id int(11) NOT NULL,
read_and_write_access varchar(3) NOT NULL,
CONSTRAINT admin_pk PRIMARY KEY(auser_id),
CONSTRAINT admin_fk FOREIGN KEY(auser_id) REFERENCES resident_T(user_id) ON UPDATE CASCADE ON DELETE RESTRICT);

/*User Table*/
 CREATE TABLE user_T
(uuser_id int(11) NOT NULL,
read_only_access varchar(3) NOT NULL,
CONSTRAINT user_pk PRIMARY KEY(uuser_id),
CONSTRAINT user_fk FOREIGN KEY(uuser_id) REFERENCES resident_T(user_id) ON UPDATE CASCADE ON DELETE RESTRICT);

/*Bill Table*/
CREATE TABLE bill_T
(bill_nbr int(11) AUTO_INCREMENT NOT NULL,
monthly_price double NOT NULL,
monthly_usage varchar(20) NOT NULL,
com_id int(11) NOT NULL,
CONSTRAINT bill_pk PRIMARY KEY(bill_nbr),
CONSTRAINT bill_fk FOREIGN KEY(com_id) REFERENCES community_T(com_id) ON UPDATE CASCADE ON DELETE RESTRICT);

/*House Table*/
CREATE TABLE house_T
(house_nbr int(11) AUTO_INCREMENT NOT NULL,
no_of_meters varchar(20) NOT NULL,
bill_nbr int(11) NOT NULL,
CONSTRAINT house_pk PRIMARY KEY(house_nbr),
CONSTRAINT house_fk FOREIGN KEY(bill_nbr) REFERENCES bill_T(bill_nbr) ON UPDATE CASCADE ON DELETE RESTRICT);

/*Owned House Table*/
CREATE TABLE owned_house_T
(user_id int(11) NOT NULL,
house_nbr int(11) NOT NULL,
CONSTRAINT owned_house_pk PRIMARY KEY(user_id, house_nbr),
CONSTRAINT owned_house_fk1 FOREIGN KEY(user_id) REFERENCES resident_T(user_id) ON UPDATE CASCADE ON DELETE RESTRICT,
CONSTRAINT owned_house_fk2 FOREIGN KEY(house_nbr) REFERENCES house_T(house_nbr) ON UPDATE CASCADE ON DELETE RESTRICT); 

/*Meter Table*/
CREATE TABLE meter_T
(meter_id int(11) AUTO_INCREMENT NOT NULL,
house_nbr int(11) NOT NULL,
CONSTRAINT meter_pk PRIMARY KEY(meter_id),
CONSTRAINT meter_fk FOREIGN KEY(house_nbr) REFERENCES house_T(house_nbr) ON UPDATE CASCADE ON DELETE RESTRICT);

/*Reading Table*/
CREATE TABLE reading_T
(meter_id int(11) NOT NULL,
reading varchar(20) NOT NULL,
date_stamp date NOT NULL,
time_stamp time NOT NULL,
CONSTRAINT reading_pk PRIMARY KEY(meter_id, reading, date_stamp, time_stamp),
CONSTRAINT reading_fk FOREIGN KEY(meter_id) REFERENCES meter_T(meter_id) ON UPDATE CASCADE ON DELETE RESTRICT);

/*View Table*/
CREATE TABLE view_T
(house_nbr int(11) NOT NULL,
meter_id int(11) NOT NULL,
daily_usage varchar(20) NOT NULL,
daily_average varchar(20) NOT NULL,
monthly_usage varchar(20) NOT NULL,
monthly_average varchar(20) NOT NULL,
CONSTRAINT view_pk PRIMARY KEY(house_nbr, meter_id),
CONSTRAINT view_fk1 FOREIGN KEY(house_nbr) REFERENCES house_T(house_nbr) ON UPDATE CASCADE ON DELETE RESTRICT,
CONSTRAINT view_fk2 FOREIGN KEY(meter_id) REFERENCES meter_T(meter_id) ON UPDATE CASCADE ON DELETE RESTRICT);

/*Error Report Table*/
CREATE TABLE error_report_T
(error_report_id int(11) AUTO_INCREMENT NOT NULL,
issue_type varchar(20) NOT NULL,
changes_made varchar(50) NOT NULL,
auser_id int(11) NOT NULL,
meter_id int(11) NOT NULL,
CONSTRAINT error_report_pk PRIMARY KEY(error_report_id),
CONSTRAINT error_report_fk1 FOREIGN KEY(auser_id) REFERENCES admin_T(auser_id) ON UPDATE CASCADE ON DELETE RESTRICT,
CONSTRAINT error_report_fk2 FOREIGN KEY(meter_id) REFERENCES meter_T(meter_id) ON UPDATE CASCADE ON DELETE RESTRICT);

/*Error Reading Table*/
CREATE TABLE error_reading_T
(error_report_id int(11) NOT NULL,
before_value varchar(30) NOT NULL,
before_date date NOT NULL,
before_time time NOT NULL,
after_value varchar(30) NOT NULL,
after_date date NOT NULL,
after_time time NOT NULL,
CONSTRAINT error_reading_pk PRIMARY KEY(error_report_id, before_value, before_date, before_time, after_value, after_date, after_time),
CONSTRAINT error_reading_fk FOREIGN KEY(error_report_id) REFERENCES error_report_T(error_report_id) ON UPDATE CASCADE ON DELETE RESTRICT);
