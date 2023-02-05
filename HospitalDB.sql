CREATE TABLE doctor (
    employeeid    INTEGER,
    gender        VARCHAR2,
    specialty     VARCHAR2,
    graduatedfrom VARCHAR2
);

CREATE TABLE equipmenttechnician (
    employeeid INTEGER
);

CREATE TABLE canrepairequipment (
    employeeid    INTEGER,
    equipmenttype VARCHAR2
);

CREATE TABLE equipmenttype (
    id            INTEGER,
    desc          VARCHAR2,
    model         VARCHAR2,
    instructions  VARCHAR2,
    numberofunits INTEGER
);

CREATE TABLE equipment (
    serialnum        INTEGER,
    typeid         INTEGER,
    purchaseyear   INTEGER,
    lastinspection DATE,
    roomnum        INTEGER
);