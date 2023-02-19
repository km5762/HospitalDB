--DO NOT RUN SCRIPT
-- PATIENTS
insert into patient (ssn, firstname, lastname, address, telnum) values ('111-22-3333', 'Mala', 'Grinov', '38410 Mesta Junction', 2966784824);
insert into patient (ssn, firstname, lastname, address, telnum) values ('311-32-8832', 'Marja', 'Normington', '1 Myrtle Lane', 3724647810);
insert into patient (ssn, firstname, lastname, address, telnum) values ('435-70-2426', 'Cissy', 'Wapol', '4751 Rowland Pass', 3039988029);
insert into patient (ssn, firstname, lastname, address, telnum) values ('547-41-4190', 'Nada', 'Slyman', '05493 Glendale Lane', 4095016646);
insert into patient (ssn, firstname, lastname, address, telnum) values ('860-98-6551', 'Marco', 'Enns', '539 Fairview Junction', 1904627841);
insert into patient (ssn, firstname, lastname, address, telnum) values ('797-50-9389', 'Shandeigh', 'Dawtre', '633 Pawling Drive', 3726023392);
insert into patient (ssn, firstname, lastname, address, telnum) values ('528-77-1320', 'Mersey', 'MacSorley', '6693 Towne Lane', 5972411119);
insert into patient (ssn, firstname, lastname, address, telnum) values ('153-06-1846', 'Mattias', 'Ruegg', '96616 Clyde Gallagher Lane', 4826265183);
insert into patient (ssn, firstname, lastname, address, telnum) values ('127-36-9565', 'Angela', 'Towsie', '498 Sauthoff Center', 1621578104);
insert into patient (ssn, firstname, lastname, address, telnum) values ('311-67-3442', 'Augustine', 'Kelbie', '131 Dwight Street', 7188597605);

-- ROOMS
insert into room (roomnum, occupiedflag) values (1, 0);
insert into room (roomnum, occupiedflag) values (2, 0);
insert into room (roomnum, occupiedflag) values (3, 1);
insert into room (roomnum, occupiedflag) values (4, 0);
insert into room (roomnum, occupiedflag) values (5, 1);
insert into room (roomnum, occupiedflag) values (6, 1);
insert into room (roomnum, occupiedflag) values (7, 1);
insert into room (roomnum, occupiedflag) values (8, 0);
insert into room (roomnum, occupiedflag) values (9, 1);
insert into room (roomnum, occupiedflag) values (10, 1);

-- ROOM SERVICES
insert into roomservice (roomnum, service) values (1, 'ICU');
insert into roomservice (roomnum, service) values (1, 'Consulting Room');
insert into roomservice (roomnum, service) values (2, 'Ward Room');
insert into roomservice (roomnum, service) values (2, 'Emergency Room');
insert into roomservice (roomnum, service) values (3, 'ICU');
insert into roomservice (roomnum, service) values (3, 'Operating Room');

-- EQUIPMENT TYPES
insert into equipmenttype (equipmenttypeid, equipmentdesc, equipmentmodel, instructions, numberofunits) values (1, 'Used to form pictures of the anatomy and the physiological processes of the body.', 'MRI', '1. Turn on 2. Use 3. Profit', 3);
insert into equipmenttype (equipmenttypeid, equipmentdesc, equipmentmodel, instructions, numberofunits) values (2, 'Uses sound waves to produce images of structures within the body', 'Ultrasound', '1. Turn on 2. Use 3. Profit', 3);
insert into equipmenttype (equipmenttypeid, equipmentdesc, equipmentmodel, instructions, numberofunits) values (3, 'Creates cross sectional imaging of bones, tissues, and blood vessels.', 'CT Scanner', '1. Turn on 2. Use 3. Profit', 3);

-- MRI MACHINES
insert into equipment (serialnum, equipmenttypeid, purchaseyear, lastinspection, roomnum) values ('A01-02X', 1, 2010, date '2016-01-01', 1);
insert into equipment (serialnum, equipmenttypeid, purchaseyear, lastinspection, roomnum) values ('A02-03X', 1, 2011, date '2015-01-01', 1);
insert into equipment (serialnum, equipmenttypeid, purchaseyear, lastinspection, roomnum) values ('A03-04X', 1, 2001, date '2013-01-01', 1);

-- ULTRASOUND MACHINES
insert into equipment (serialnum, equipmenttypeid, purchaseyear, lastinspection, roomnum) values ('B01-02Y', 2, 2010, date '2018-01-01', 1);
insert into equipment (serialnum, equipmenttypeid, purchaseyear, lastinspection, roomnum) values ('B02-03Y', 2, 2011, date '2014-01-01', 1);
insert into equipment (serialnum, equipmenttypeid, purchaseyear, lastinspection, roomnum) values ('B03-04Y', 2, 2002, date '2013-01-01', 1);

-- CT SCANNERS
insert into equipment (serialnum, equipmenttypeid, purchaseyear, lastinspection, roomnum) values ('C01-02Z', 3, 2020, date '2021-01-01', 1);
insert into equipment (serialnum, equipmenttypeid, purchaseyear, lastinspection, roomnum) values ('C02-03Z', 3, 2019, date '2020-01-01', 1);
insert into equipment (serialnum, equipmenttypeid, purchaseyear, lastinspection, roomnum) values ('C03-04Z', 3, 2014, date '2022-01-01', 1);

-- ADMISSIONS
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (1, date '2022-06-20', date '2022-08-08', 933, 513, '111-22-3333', date '2022-09-26');
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (2, date '2022-08-08', date '2022-09-26', 6301, 3341, '111-22-3333', date '2023-02-05');
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (3, date '2022-02-23', date '2022-04-09', 6514, 3254, '311-32-8832', date '2022-09-07');
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (4, date '2022-06-08', date '2022-07-02', 3813, 795, '311-32-8832', null);
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (5, date '2022-03-25', date '2022-04-07', 5752, 3738, '435-70-2426', date '2022-04-23');
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (6, date '2022-03-26', date '2022-04-04', 5909, 5726, '435-70-2426', date '2022-09-10');
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (7, date '2022-07-25', date '2022-09-16', 9895, 2838, '547-41-4190', date '2022-09-17');
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (8, date '2022-09-15', date '2022-09-25', 8069, 6868, '547-41-4190', null);
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (9, date '2022-07-09', date '2022-07-28', 755, 197, '860-98-6551', null);
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (10, date '2023-01-19', date '2023-02-20', 8362, 1415, '860-98-6551', null);
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (11, date '2022-04-01', date '2022-05-21', 8595, 1234, '111-22-3333', null);
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (12, date '2022-04-27', date '2022-06-08', 8818, 2346, '111-22-3333', null);
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (13, date '2022-05-30', date '2022-06-08', 8576, 1237, '111-22-3333', null);
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (14, date '2023-01-11', date '2023-02-16', 9851, 5677, '111-22-3333', date '2023-02-27');
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (15, date '2022-06-27', date '2022-08-08', 635, 333, '111-22-3333', null);
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (16, date '2022-02-22', date '2022-03-29', 3786, 2356, '111-22-3333', null);

-- MANAGERS
insert into employee (employeeid, firstname, lastname, salary, jobtitle, officenum, employeerank, supervisorid, addressstreet, addresscity, addresszip) values (1, 'Mozes', 'Kaliszewski', 77119, 'General Manager', 1, 'General Manager', null, '3351 Sauthoff Junction', 'Kano', 12704);
insert into employee (employeeid, firstname, lastname, salary, jobtitle, officenum, employeerank, supervisorid, addressstreet, addresscity, addresszip) values (2, 'Glynn', 'Mobius', 541284, 'General Manager', 2, 'General Manager', null, '01905 Claremont Avenue', 'R?msar', 14956);
insert into employee (employeeid, firstname, lastname, salary, jobtitle, officenum, employeerank, supervisorid, addressstreet, addresscity, addresszip) values (3, 'Hobey', 'Carous', 99688, 'Division Manager', 3, 'Division Manager', 1, '88519 Donald Plaza', 'San Andres', 85557);
insert into employee (employeeid, firstname, lastname, salary, jobtitle, officenum, employeerank, supervisorid, addressstreet, addresscity, addresszip) values (4, 'Zechariah', 'Johnsson', 558837, 'Division Manager', 4, 'Division Manager', 1, '89 Lakewood Drive', 'Danao', 56016);
insert into employee (employeeid, firstname, lastname, salary, jobtitle, officenum, employeerank, supervisorid, addressstreet, addresscity, addresszip) values (5, 'Huberto', 'Rowlinson', 273069, 'Division Manager', 5, 'Division Manager', 2, '82882 Old Shore Hill', 'Urungpigang', 34875);
insert into employee (employeeid, firstname, lastname, salary, jobtitle, officenum, employeerank, supervisorid, addressstreet, addresscity, addresszip) values (6, 'Allie', 'Wolledge', 232014, 'Division Manager', 6, 'Division Manager', 2, '8584 Blackbird Court', 'Chongjin', 89552);

-- REGULAR EMPLOYEES
insert into employee (employeeid, firstname, lastname, salary, jobtitle, officenum, employeerank, supervisorid, addressstreet, addresscity, addresszip) values (7, 'Zed', 'Kike', 424260, 'Human Resources Assistant II', 7, 'Employee', 3, '00 Bowman Hill', 'Socorro', 19848);
insert into employee (employeeid, firstname, lastname, salary, jobtitle, officenum, employeerank, supervisorid, addressstreet, addresscity, addresszip) values (8, 'Elsa', 'Roache', 350224, 'Civil Engineer', 8, 'Employee', 4, '03 Fairview Avenue', 'Notodden', 93462);
insert into employee (employeeid, firstname, lastname, salary, jobtitle, officenum, employeerank, supervisorid, addressstreet, addresscity, addresszip) values (9, 'Abigale', 'Robelin', 360746, 'Quality Engineer', 9, 'Employee', 5, '60 Troy Avenue', 'Suugaant', 61957);
insert into employee (employeeid, firstname, lastname, salary, jobtitle, officenum, employeerank, supervisorid, addressstreet, addresscity, addresszip) values (10, 'Janeta', 'Bohman', 253120, 'Programmer I', 10, 'Employee', 6, '3 Moose Drive', 'Sulech�w', 38477);
insert into employee (employeeid, firstname, lastname, salary, jobtitle, officenum, employeerank, supervisorid, addressstreet, addresscity, addresszip) values (11, 'Cordelie', 'MacGillacolm', 351449, 'GIS Technical Architect', 11, 'Employee', 3, '72553 Elgar Avenue', 'Peoria', 36872);

-- EQUIPMENT TECHS
insert into employee (employeeid, firstname, lastname, salary, jobtitle, officenum, employeerank, supervisorid, addressstreet, addresscity, addresszip) values (12, 'Alyda', 'Seers', 324013, 'Equipment Technician', 12, 'Employee', 4, '574 Anthes Terrace', 'Nizhnedevitsk', 77412);
insert into employee (employeeid, firstname, lastname, salary, jobtitle, officenum, employeerank, supervisorid, addressstreet, addresscity, addresszip) values (13, 'Patrizia', 'Rablin', 281499, 'Equipment Technician', 13, 'Employee', 5, '190 Carpenter Place', 'Utan', 17765);
insert into employee (employeeid, firstname, lastname, salary, jobtitle, officenum, employeerank, supervisorid, addressstreet, addresscity, addresszip) values (14, 'Anatole', 'Uren', 130515, 'Equipment Technician', 14, 'Employee', 6, '32781 Little Fleur Avenue', 'Du�ermenqin', 18040);
insert into employee (employeeid, firstname, lastname, salary, jobtitle, officenum, employeerank, supervisorid, addressstreet, addresscity, addresszip) values (15, 'Yoshi', 'Harcase', 477221, 'Equipment Technician', 15, 'Employee', 3, '1508 Mallard Circle', 'Betafo', 82533);
insert into employee (employeeid, firstname, lastname, salary, jobtitle, officenum, employeerank, supervisorid, addressstreet, addresscity, addresszip) values (16, 'Dorise', 'Panting', 419580, 'Equipment Technician', 16, 'Employee', 3, '4 Florence Parkway', 'Ferkess�dougou', 27464);

insert into equipmenttechnician (employeeid) values (12);
insert into equipmenttechnician (employeeid) values (13);
insert into equipmenttechnician (employeeid) values (14);
insert into equipmenttechnician (employeeid) values (15);
insert into equipmenttechnician (employeeid) values (16);

-- DOCTORS
insert into employee (employeeid, firstname, lastname, salary, jobtitle, officenum, employeerank, supervisorid, addressstreet, addresscity, addresszip) values (17, 'Guinna', 'Alelsandrovich', 320762, 'Doctor', 17, 'Employee', 3, '4 Talmadge Drive', 'Nari�o', 87407);
insert into employee (employeeid, firstname, lastname, salary, jobtitle, officenum, employeerank, supervisorid, addressstreet, addresscity, addresszip) values (18, 'Nat', 'Dowry', 349702, 'Doctor', 18, 'Employee', 5, '3 High Crossing Lane', 'Tancheng', 21472);
insert into employee (employeeid, firstname, lastname, salary, jobtitle, officenum, employeerank, supervisorid, addressstreet, addresscity, addresszip) values (19, 'Faunie', 'Vennard', 486778, 'Doctor', 19, 'Employee', 4, '69 Atwood Drive', 'Polo', 46739);
insert into employee (employeeid, firstname, lastname, salary, jobtitle, officenum, employeerank, supervisorid, addressstreet, addresscity, addresszip) values (20, 'Hadleigh', 'Lundberg', 424461, 'Doctor', 20, 'Employee', 4, '68369 Shoshone Alley', 'Aldeia da Mata', 21305);
insert into employee (employeeid, firstname, lastname, salary, jobtitle, officenum, employeerank, supervisorid, addressstreet, addresscity, addresszip) values (21, 'Julius', 'Sehorsch', 184714, 'Doctor', 21, 'Employee', 5, '24 Swallow Center', 'Benisheikh', 45791);

insert into doctor (employeeid, gender, specialty, graduatedfrom) values (17, 'Male', 'Dermatology', 'WPI');
insert into doctor (employeeid, gender, specialty, graduatedfrom) values (18, 'Female', 'Anesthesiology', 'WPI');
insert into doctor (employeeid, gender, specialty, graduatedfrom) values (19, 'Male', 'Family Medicine', 'WPI');
insert into doctor (employeeid, gender, specialty, graduatedfrom) values (20, 'Female', 'Cardiology', 'Harvard');
insert into doctor (employeeid, gender, specialty, graduatedfrom) values (21, 'Male', 'Immunology', 'John Hopkins');

-- ROOM ACCESS
insert into roomaccess (roomnum, employeeid) values (7, 13);
insert into roomaccess (roomnum, employeeid) values (5, 21);
insert into roomaccess (roomnum, employeeid) values (10, 15);
insert into roomaccess (roomnum, employeeid) values (3, 3);
insert into roomaccess (roomnum, employeeid) values (3, 9);
insert into roomaccess (roomnum, employeeid) values (3, 2);
insert into roomaccess (roomnum, employeeid) values (2, 20);
insert into roomaccess (roomnum, employeeid) values (4, 10);
insert into roomaccess (roomnum, employeeid) values (3, 15);
insert into roomaccess (roomnum, employeeid) values (9, 4);
insert into roomaccess (roomnum, employeeid) values (2, 10);
insert into roomaccess (roomnum, employeeid) values (5, 4);
insert into roomaccess (roomnum, employeeid) values (1, 4);
insert into roomaccess (roomnum, employeeid) values (5, 2);
insert into roomaccess (roomnum, employeeid) values (3, 8);
insert into roomaccess (roomnum, employeeid) values (10, 2);
insert into roomaccess (roomnum, employeeid) values (6, 14);
insert into roomaccess (roomnum, employeeid) values (4, 4);
insert into roomaccess (roomnum, employeeid) values (3, 16);
insert into roomaccess (roomnum, employeeid) values (5, 1);
insert into roomaccess (roomnum, employeeid) values (7, 17);
insert into roomaccess (roomnum, employeeid) values (1, 10);
insert into roomaccess (roomnum, employeeid) values (7, 9);
insert into roomaccess (roomnum, employeeid) values (1, 18);
insert into roomaccess (roomnum, employeeid) values (3, 10);
insert into roomaccess (roomnum, employeeid) values (1, 1);
insert into roomaccess (roomnum, employeeid) values (1, 7);
insert into roomaccess (roomnum, employeeid) values (5, 19);

-- CAN REPAIR
insert into canrepairequipment (equipmenttypeid, employeeid) values (2, 13);
insert into canrepairequipment (equipmenttypeid, employeeid) values (2, 12);
insert into canrepairequipment (equipmenttypeid, employeeid) values (3, 13);
insert into canrepairequipment (equipmenttypeid, employeeid) values (2, 16);
insert into canrepairequipment (equipmenttypeid, employeeid) values (2, 14);
insert into canrepairequipment (equipmenttypeid, employeeid) values (3, 14);
insert into canrepairequipment (equipmenttypeid, employeeid) values (1, 16);
insert into canrepairequipment (equipmenttypeid, employeeid) values (3, 16);

-- EXAMINATIONS 
insert into examine (employeeid, admissionnum, doctorscomment) values (17, 1, 'Calcium Chloride');
insert into examine (employeeid, admissionnum, doctorscomment) values (17, 2, 'MORPHINE SULFATE');
insert into examine (employeeid, admissionnum, doctorscomment) values (17, 11, 'Polyethylene Glycol 3350');
insert into examine (employeeid, admissionnum, doctorscomment) values (18, 12, 'Velvet Grass');
insert into examine (employeeid, admissionnum, doctorscomment) values (18, 13, 'Midodrine Hydrochloride');
insert into examine (employeeid, admissionnum, doctorscomment) values (18, 14, 'SODIUM MONOFLUOROPHOSPHATE');
insert into examine (employeeid, admissionnum, doctorscomment) values (19, 15, 'Mycophenolate Mofetil');
insert into examine (employeeid, admissionnum, doctorscomment) values (19, 16, 'potassium chloride');
insert into examine (employeeid, admissionnum, doctorscomment) values (21, 5, 'alprazolam');
insert into examine (employeeid, admissionnum, doctorscomment) values (20, 6, 'Ibuprofen');

-- STAYINS
insert into stayin (admissionnum, roomnum, startdate, enddate) values (14, 5, date '2022-07-29', date '2022-07-25');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (13, 2, date '2022-07-03', date '2022-03-29');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (2, 6,  date '2022-12-04', date '2022-11-22');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (3, 10, date '2022-11-29', date '2022-04-06');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (1, 5,  date '2022-11-18', date '2022-10-31');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (2, 6,  date '2022-09-02', date '2022-12-23');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (9, 1,  date '2022-05-07', date '2022-11-02');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (11, 8, date '2023-01-26', date '2022-11-15');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (5, 1, date '2022-06-13', date '2022-03-13');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (9, 3,  date '2022-11-07', date '2022-11-14');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (7, 3, date '2022-04-10', date '2022-09-16');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (2, 5,  date '2022-06-14', date '2022-08-16');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (13, 1, date '2022-12-19', date '2023-01-12');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (12, 6, date '2022-10-05', date '2022-05-19');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (16, 7, date '2022-09-04', date '2023-01-21');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (15, 1, date '2022-11-03', date '2022-12-06');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (7, 9,  date '2022-10-23', date '2022-07-25');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (14, 6, date '2022-03-12', date '2022-11-29');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (16, 1, date '2022-05-03', date '2022-10-07');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (16, 1, date '2022-07-19', date '2022-08-17');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (11, 3, date '2022-04-22', date '2022-04-18');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (1, 1,  date '2022-05-21', date '2022-10-05');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (12, 2, date '2023-02-03', date '2022-05-29');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (15, 6, date '2022-08-15', date '2022-11-06');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (1, 9,  date '2022-07-31', date '2022-06-03');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (15, 1, date '2022-09-09', date '2022-12-15');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (16, 10,date '2022-10-16', date '2022-05-16');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (7, 3,  date '2022-09-21', date '2022-04-23');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (2, 5,  date '2022-04-28', date '2023-01-20');
insert into stayin (admissionnum, roomnum, startdate, enddate) values (9, 3,  date '2022-09-30', date '2022-03-25');






