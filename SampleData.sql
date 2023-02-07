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

insert into roomservice (roomnum, service) values (1, 'ICU');
insert into roomservice (roomnum, service) values (1, 'Consulting Room');
insert into roomservice (roomnum, service) values (2, 'Ward Room');
insert into roomservice (roomnum, service) values (2, 'Emergency Room');
insert into roomservice (roomnum, service) values (3, 'ICU');
insert into roomservice (roomnum, service) values (3, 'Operating Room');

insert into equipmenttype (equipmenttypeid, equipmentdesc, equipmentmodel, instructions, numberofunits) values (1, 'Used to form pictures of the anatomy and the physiological processes of the body.', 'MRI', '1. Turn on 2. Use 3. Profit', 3);
insert into equipmenttype (equipmenttypeid, equipmentdesc, equipmentmodel, instructions, numberofunits) values (2, 'Uses sound waves to produce images of structures within the body', 'Ultrasound', '1. Turn on 2. Use 3. Profit', 3);
insert into equipmenttype (equipmenttypeid, equipmentdesc, equipmentmodel, instructions, numberofunits) values (3, 'Creates cross sectional imaging of bones, tissues, and blood vessels.', 'CT Scanner', '1. Turn on 2. Use 3. Profit', 3);

insert into equipment (serialnum, equipmenttypeid, purchaseyear, lastinspection, roomnum) values ('A01-02X', 1, 1977, date '2016-01-01', 1);
insert into equipment (serialnum, equipmenttypeid, purchaseyear, lastinspection, roomnum) values ('A02-03X', 1, 2000, date '2015-01-01', 1);
insert into equipment (serialnum, equipmenttypeid, purchaseyear, lastinspection, roomnum) values ('A03-04X', 1, 2001, date '2013-01-01', 1);

insert into equipment (serialnum, equipmenttypeid, purchaseyear, lastinspection, roomnum) values ('B01-02Y', 2, 2017, date '2018-01-01', 1);
insert into equipment (serialnum, equipmenttypeid, purchaseyear, lastinspection, roomnum) values ('B02-03Y', 2, 2008, date '2014-01-01', 1);
insert into equipment (serialnum, equipmenttypeid, purchaseyear, lastinspection, roomnum) values ('B03-04Y', 2, 2002, date '2013-01-01', 1);

insert into equipment (serialnum, equipmenttypeid, purchaseyear, lastinspection, roomnum) values ('C01-02Z', 3, 2020, date '2021-01-01', 1);
insert into equipment (serialnum, equipmenttypeid, purchaseyear, lastinspection, roomnum) values ('C02-03Z', 3, 2019, date '2020-01-01', 1);
insert into equipment (serialnum, equipmenttypeid, purchaseyear, lastinspection, roomnum) values ('C03-04Z', 3, 2014, date '2022-01-01', 1);

insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (1, date '2022-06-20', date '2022-08-08', 933, 513, '111-22-3333', date '2022-12-31');
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (2, date '2022-08-08', date '2022-09-26', 6301, 3341, '111-22-3333', date '2022-09-05');
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (3, date '2022-02-23', date '2022-04-09', 6514, 3254, '311-32-8832', date '2022-09-07');
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (4, date '2022-06-08', date '2022-07-02', 3813, 795, '311-32-8832', date '2022-04-11');
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (5, date '2022-03-25', date '2022-04-07', 5752, 3738, '435-70-2426', date '2022-04-23');
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (6, date '2022-03-26', date '2022-04-04', 5909, 5726, '435-70-2426', date '2022-09-10');
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (7, date '2022-07-25', date '2022-09-16', 9895, 2838, '547-41-4190', date '2022-09-17');
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (8, date '2022-09-15', date '2022-09-25', 8069, 6868, '547-41-4190', date '2022-09-21');
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (9, date '2022-07-09', date '2022-07-28', 755, 197, '860-98-6551', date '2023-01-18');
insert into admission (admissionnum, admissiondate, leavedate, totalpayment, insurancepayment, ssn, futurevisit) values (10, date '2023-01-19', date '2023-02-20', 8362, 1415, '860-98-6551', date '2022-04-09');


