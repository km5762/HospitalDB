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
    employeeid,
    gender,
    specialty,
    graduatedfrom
)

CREATE TABLE equipmenttechnician ( employeeid )

CREATE TABLE canrepairequipment (
    employeeid,
    equipmenttype
)

CREATE TABLE equipmenttype (
    id,
    desc,
    model,
    instructions,
    numberofunits
)

CREATE TABLE equipment (
    serialnum,
    typeid,
    purchaseyear,
    lastinspection,
    roomnum
)

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
    ssn,
    firstname,
    lastname,
    address,
    telnum
)

CREATE TABLE admission (
    num,
    admissiondate,
    leavedate,
    totalpayment,
    insurancepayment,
    patient_ssn,
    futurevisit
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