CREATE TABLE doctor (
    employeeid    INTEGER,
    gender        VARCHAR2(20),
    specialty     VARCHAR2(20),
    graduatedfrom VARCHAR2(20)
);

CREATE TABLE equipmenttechnician (
    employeeid INTEGER
);

CREATE TABLE canrepairequipment (
    employeeid    INTEGER,
    equipmenttype VARCHAR2(20)
);

CREATE TABLE equipmenttype (
    eid            INTEGER,
    edesc     VARCHAR2(20),
    emodel         VARCHAR2(20),
    instructions  VARCHAR2(20),
    numberofunits INTEGER
);

CREATE TABLE equipment (
    serialnum        INTEGER,
    typeid         INTEGER,
    purchaseyear   INTEGER,
    lastinspection DATE,
    roomnum        INTEGER
);
