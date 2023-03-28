/*Group Project Queries*/

USE metering_database;

/*List Residents Living in 'Yellow Brick' Community*/
SELECT* FROM resident_T INNER JOIN community_T
ON resident_T.com_id=community_T.com_id
WHERE community_name='Yellow Brick';

/*List of Residents (name only) Living in Communities with a monthly usage of less than 15000*/
SELECT resident_name
FROM resident_T NATURAL JOIN community_T NATURAL JOIN bill_T
WHERE monthly_usage<15000; 

/*List communities who has more than 2 meters */
SELECT b.com_id, c.community_name, h.no_of_meters
FROM house_T as h
INNER JOIN bill_T as b
on h.bill_nbr = b.bill_nbr
INNER JOIN community_T as c
ON b.com_id = c.com_id
having h.no_of_meters>2;

/*List houses who has replaced the meter*/
SELECT m.house_nbr
FROM error_report_T as e
INNER JOIN meter_T as m
ON e.meter_id=m.meter_id
WHERE e.changes_made LIKE '%replaced the meter';

/*List the count of each issue type*/
SELECT e.meter_id, e.issue_type, count(e.issue_type)
FROM error_report_T as e
INNER JOIN meter_T as m
ON e.meter_id=m.meter_id
GROUP BY e.meter_id, e.issue_type
ORDER BY e.issue_type DESC;

/*List communities with their monthly usages from high to low*/
SELECT  b.com_id, c.community_name, b.monthly_usage
from bill_T as b
INNER JOIN community_T as c
ON b.com_id = c.com_id
ORDER BY b.monthly_usage DESC;

/* View for communities from springfield who have residents */
CREATE VIEW v_sp_community AS
SELECT community_T.*
FROM community_T INNER JOIN resident_T
ON community_T.com_id=resident_T.com_id
WHERE community_name='Springfield';

SELECT * FROM v_sp_community;

/* View for houses whose monthly bill price is over $150 */
CREATE VIEW v_mp_house AS
SELECT house_T.*
FROM house_T INNER JOIN bill_T
ON house_T.bill_nbr=bill_T.bill_nbr
WHERE monthly_price > 150;

SELECT * FROM v_mp_house;

/* Stored procedure to show average daily usage of residents */
DELIMITER //
CREATE PROCEDURE sp_dailyusage()
BEGIN
SELECT avg(daily_usage)
FROM view_T;
END //
DELIMITER ;

CALL sp_dailyusage;

/* Stored procedure to list meter information having reading over 500 */
DELIMITER //
CREATE PROCEDURE sp_meterinfo()
BEGIN
SELECT * FROM reading_T 
WHERE reading > 500;
END //
DELIMITER ;

CALL sp_meterinfo;

