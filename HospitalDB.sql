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

CREATE TABLE employee (
    id            NUMBER PRIMARY KEY,
    fname         VARCHAR2(40),
    lname         VARCHAR2(40),
    salary        NUMBER,
    jobtitle      VARCHAR(40),
    officenum     NUMBER,
    emprank       VARCHAR2(40),
    supervisorid  NUMBER,
    FOREIGN KEY ( supervisorid )
        REFERENCES employee ( id ),
    addressstreet VARCHAR2(40),
    addresscity   VARCHAR2(40),
    addresszip    NUMBER
)

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

CREATE TABLE room (
    roomnum number primary key,
    occupiedflag char(1),
    Constraint occupied_check check(occupiedflag in ('1', '0'))
)

CREATE TABLE roomservice (
    roomnum number,
    service varchar2(255)
)

CREATE TABLE roomaccess (
    roomnum number,
    empid number,
    foreign key (roomnum) references room (roomnum),
    foreign key (empid) references employee (id),
    Constraint pk_roomaccess primary key (roomnum, empid)
)

CREATE TABLE patient (
    ssn number,
    firstname Varchar2(40),
    lastname Varchar2(40),
    address Varchar2(40),
    telnum integer,
    Constraint pk_patient primary key (ssn)
)

CREATE TABLE admission (
    anum integer,
    admissiondate date,
    leavedate date,
    totalpayment real,
    insurancepayment real,
    patient_ssn integer,
    futurevisit date,
    foreign key (patient_ssn) references patient (ssn),
    Constraint pk_admission primary key (anum)
)

CREATE TABLE examine (
    doctor id,
    admissionnum,
    comment
)

CREATE TABLE stayin (
    admissionnum,
    roomnum,
    startdate,
    enddate
)
