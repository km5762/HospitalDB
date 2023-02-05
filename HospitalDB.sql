CREATE TABLE employee (
    id            NUMBER PRIMARY KEY,
    fname         VARCHAR2(40),
    lname         VARCHAR2(40),
    salary        INTEGER,
    jobtitle      VARCHAR(40),
    officenum     INTEGER,
    emprank       VARCHAR2(40),
    supervisorid  INTERGER,
    addressstreet VARCHAR2(40),
    addresscity   VARCHAR2(40),
    addresszip    INTEGER,
    Constraint employee_supervisorid_fk FOREIGN KEY ( supervisorid )
        REFERENCES employee ( id )
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
    serialnum      INTEGER,
    typeid         INTEGER,
    purchaseyear   INTEGER,
    lastinspection DATE,
    roomnum        INTEGER
);

CREATE TABLE room (
    roomnum      NUMBER PRIMARY KEY,
    occupiedflag CHAR(1),
    CONSTRAINT occupied_check CHECK ( occupiedflag IN ( '1', '0' ) )
)

CREATE TABLE roomservice (
    roomnum NUMBER,
    service VARCHAR2(255),
    CONSTRAINT roomservice_roomnum_fk FOREIGN KEY ( roomnum )
        REFERENCES room ( roomnum ),
    CONSTRAINT roomservice_pk PRIMARY KEY ( roomnum,
                                            service )
)

CREATE TABLE roomaccess (
    roomnum NUMBER,
    empid   NUMBER,
    CONSTRAINT roomaccess_roomnum_fk FOREIGN KEY ( roomnum )
        REFERENCES room ( roomnum ),
    CONSTRAINT roomaccess_empid_fk FOREIGN KEY ( empid )
        REFERENCES employee ( id ),
    CONSTRAINT roomaccess_pk PRIMARY KEY ( roomnum,
                                           empid )
)

CREATE TABLE patient (
    ssn,
    firstname,
    lastname,
    address,
    telnum
)

CREATE TABLE admission (
    anum,
    admissiondate,
    leavedate,
    totalpayment,
    insurancepayment,
    patient_ssn,
    futurevisit
)

CREATE TABLE examine (
    doctorid       INTEGER,
    admissionnum   INTEGER,
    doctorscomment VARCHAR2(500),
    CONSTRAINT examine_doctorid_fk FOREIGN KEY ( doctorid )
        REFERENCES doctor ( employeeid ),
    CONSTRAINT examine_admissionnum_fk FOREIGN KEY ( admissionnum )
        REFERENCES admission ( anum ),
    CONSTRAINT exampine_pk PRIMARY KEY ( doctorid,
                                         admissionnum )
)

CREATE TABLE stayin (
    admissionnum INTEGER,
    roomnum      INTEGER,
    startdate    DATE,
    enddate      DATE,
    CONSTRAINT fk_roomnum FOREIGN KEY ( roomnum )
        REFERENCES room ( roomnum ),
    CONSTRAINT stayin_admissionnum_fk FOREIGN KEY ( admissionnum )
        REFERENCES admission ( anum ),
    CONSTRAINT stayin_pk PRIMARY KEY ( admissionnum,
                                       roomnum,
                                       startdate )
)