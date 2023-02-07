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

