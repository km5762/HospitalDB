CREATE TABLE employee (
    employeeid    NUMBER,
    fname         VARCHAR2(40),
    lname         VARCHAR2(40),
    salary        INTEGER,
    jobtitle      VARCHAR(40),
    officenum     INTEGER,
    employeerank  VARCHAR2(40),
    supervisorid  INTEGER,
    addressstreet VARCHAR2(40),
    addresscity   VARCHAR2(40),
    addresszip    INTEGER,
    CONSTRAINT employee_supervisorid_fk FOREIGN KEY ( supervisorid )
        REFERENCES employee ( employeeid ),
        constraint employee_pk primary key (employeeid)
);

CREATE TABLE doctor (
    employeeid    INTEGER,
    gender        VARCHAR2(20),
    specialty     VARCHAR2(20),
    graduatedfrom VARCHAR2(20),
    CONSTRAINT doctor_pk PRIMARY KEY ( employeeid ),
    CONSTRAINT gender_check CHECK ( gender IN ( 'Male', 'Female' ) ),
    CONSTRAINT doctor_employeeid_fk FOREIGN KEY ( employeeid )
        REFERENCES employee ( employeeid )
);

CREATE TABLE equipmenttechnician (
    employeeid INTEGER,
    CONSTRAINT equipmenttechnician_pk PRIMARY KEY ( employeeid ),
    CONSTRAINT equipmenttechnician_employeeid_fk FOREIGN KEY ( employeeid )
        REFERENCES employee ( employeeid )
);

CREATE TABLE canrepairequipment (
    employeeid      INTEGER,
    equipmenttypeid INTEGER,
    CONSTRAINT canrepairequipment_equipmenttypeid_fk FOREIGN KEY ( equipmenttypeid )
        REFERENCES equipmenttype ( equipmenttypeid ),
    CONSTRAINT canrepairequipment_pk PRIMARY KEY ( employeeid,
                                                   equipmenttypeid )
);

CREATE TABLE equipment (
    serialnum       VARCHAR2,
    equipmenttypeid INTEGER,
    purchaseyear    INTEGER,
    lastinspection  DATE,
    roomnum         INTEGER,
    CONSTRAINT equipment_equipmenttypeid_fk FOREIGN KEY ( equipmenttypeid )
        REFERENCES equipmenttype ( equipmenttypeid ),
    CONSTRAINT equipment_roomnum_fk FOREIGN KEY ( roomnum )
        REFERENCES room ( roomnum ),
    CONSTRAINT equipment_pk PRIMARY KEY ( serialnum )
);

CREATE TABLE equipmenttype (
    equipmenttypeid INTEGER,
    equipmentdesc   VARCHAR2,
    equipmentmodel  VARCHAR2,
    instructions    VARCHAR2,
    numberofunits   INTEGER,
    CONSTRAINT equipmenttypeid_pk PRIMARY KEY ( equipmenttypeid )
);

CREATE TABLE room (
    roomnum      NUMBER,
    occupiedflag CHAR(1),
    CONSTRAINT occupied_check CHECK ( occupiedflag IN ( '1', '0' ) ),
    constraint room_pk primary key (roomnum)
);

CREATE TABLE roomservice (
    roomnum NUMBER,
    service VARCHAR2(255),
    CONSTRAINT roomservice_roomnum_fk FOREIGN KEY ( roomnum )
        REFERENCES room ( roomnum ),
    CONSTRAINT roomservice_pk PRIMARY KEY ( roomnum,
                                            service )
);

CREATE TABLE roomaccess (
    roomnum    NUMBER,
    employeeid NUMBER,
    CONSTRAINT roomaccess_roomnum_fk FOREIGN KEY ( roomnum )
        REFERENCES room ( roomnum ),
    CONSTRAINT roomaccess_empid_fk FOREIGN KEY ( employeeid )
        REFERENCES employee ( employeeid ),
    CONSTRAINT roomaccess_pk PRIMARY KEY ( roomnum,
                                           employeeid )
);
--ssn will be "111-222-3333"
CREATE TABLE patient (
    ssn       CHAR(12),
    firstname VARCHAR2(40),
    lastname  VARCHAR2(40),
    address   VARCHAR2(40),
    telnum    INTEGER,
    CONSTRAINT pk_patient PRIMARY KEY ( ssn )
);

CREATE TABLE admission (
    admissionnum     INTEGER,
    admissiondate    DATE,
    leavedate        DATE,
    totalpayment     NUMBER,
    insurancepayment NUMBER,
    ssn              INTEGER,
    futurevisit      DATE,
    FOREIGN KEY ( ssn )
        REFERENCES patient ( ssn ),
    CONSTRAINT admission_pk PRIMARY KEY ( admissionnum )
);

CREATE TABLE examine (
    employeeid     INTEGER,
    admissionnum   INTEGER,
    doctorscomment VARCHAR2(500),
    CONSTRAINT examine_doctorid_fk FOREIGN KEY ( employeeid )
        REFERENCES doctor ( employeeid ),
    CONSTRAINT examine_admissionnum_fk FOREIGN KEY ( admissionnum )
        REFERENCES admission ( admissionnum ),
    CONSTRAINT examine_pk PRIMARY KEY ( employeeid,
                                        admissionnum )
);

CREATE TABLE stayin (
    admissionnum INTEGER,
    roomnum      INTEGER,
    startdate    DATE,
    enddate      DATE,
    CONSTRAINT fk_roomnum FOREIGN KEY ( roomnum )
        REFERENCES room ( roomnum ),
    CONSTRAINT stayin_admissionnum_fk FOREIGN KEY ( admissionnum )
        REFERENCES admission ( admissionnum ),
    CONSTRAINT stayin_pk PRIMARY KEY ( admissionnum,
                                       roomnum,
                                       startdate )
);