CREATE TABLE employee
(
employee_id  varchar(10) NOT NULL,
employee_Name varchar(50) NOT NULL,
employee_Add varchar(50) NOT NULL,
Phone_home  char(10),
PRIMARY KEY (employee_id)
);
START TRANSACTION;
INSERT INTO employee(employee_id ,employee_Name, employee_Add,Phone_home ) VALUES ('s001','林小明'  , '台南市東區崇明路110號', '06-2563215');
INSERT INTO employee(employee_id ,employee_Name, employee_Add,Phone_home ) VALUES ('s002','王大三'  ,  '台南市西區自強一路二巷10號' ,  '06-3556960');
INSERT INTO employee(employee_id ,employee_Name, employee_Add,Phone_home ) VALUES ('s003','張小燕'  , '台中市東區 忠明路210號' ,     ' 04-7778899');
INSERT INTO employee(employee_id ,employee_Name, employee_Add,Phone_home ) VALUES ('s004','吳國林' ,  '台北市中正區愛國西路二段250號' ,  '02-6935487');
COMMIT;

SELECT * FROM employee WHERE employee_Add LIKE '%台南市東區%';

SELECT 
    employee_id,
    employee_Name,
    CONCAT_WS('市',SUBSTRING_INDEX(employee_Add, '市', 1), '') AS city,
    CONCAT_WS('區', SUBSTRING_INDEX(SUBSTRING_INDEX(employee_Add, '市', -1), '區', 1), '') AS zone,
    TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(employee_Add, '區', -1), ' ', -1)) AS address
FROM employee
WHERE employee_Add LIKE '%台南市%';