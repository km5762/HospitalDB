CREATE TABLE doctor (
    employeeid    INTEGER,
    gender        VARCHAR2(20),
    specialty     VARCHAR2(20),
    graduatedfrom VARCHAR2(20),
    CONSTRAINT doctor_pk PRIMARY KEY ( employeeid ),
    CONSTRAINT doctor_id_fk FOREIGN KEY ( employeeid )
        REFERENCES employee ( id )
);

CREATE TABLE equipmenttechnician (
    employeeid INTEGER,
    CONSTRAINT equipmenttechnician_pk PRIMARY KEY ( employeeid ),
    CONSTRAINT equipmenttechnician_id_fk FOREIGN KEY ( employeeid )
        REFERENCES employee ( id )
);

CREATE TABLE canrepairequipment (
    employeeid    INTEGER,
    equipmenttype VARCHAR2(20),
    CONSTRAINT canrepairequipment_pk PRIMARY KEY ( employeeid,
                                                   equipmenttype )
);

CREATE TABLE equipment (
    serialnum       INTEGER,
    equipmenttypeid INTEGER,
    purchaseyear    INTEGER,
    lastinspection  DATE,
    roomnum         INTEGER
);

CREATE TABLE employee (
    employeeid    NUMBER PRIMARY KEY,
    fname         VARCHAR2(40),
    lname         VARCHAR2(40),
    salary        INTEGER,
    jobtitle      VARCHAR(40),
    officenum     INTEGER,
    emprank       VARCHAR2(40),
    supervisorid  interger,
    addressstreet VARCHAR2(40),
    addresscity   VARCHAR2(40),
    addresszip    INTEGER,
    CONSTRAINT employee_supervisorid_fk FOREIGN KEY ( supervisorid )
        REFERENCES employee ( id )
)

CREATE TABLE equipmenttype (
    equipmenttypeid INTEGER,
    equipmentdesc   VARCHAR2,
    equipmentmodel  VARCHAR2,
    instructions    VARCHAR2,
    numberofunits   INTEGER
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
    ssn       NUMBER,
    firstname VARCHAR2(40),
    lastname  VARCHAR2(40),
    address   VARCHAR2(40),
    telnum    INTEGER,
    CONSTRAINT pk_patient PRIMARY KEY ( ssn )
)

CREATE TABLE admission (
    anum             INTEGER,
    admissiondate    DATE,
    leavedate        DATE,
    totalpayment     REAL,
    insurancepayment REAL,
    patient_ssn      INTEGER,
    futurevisit      DATE,
    FOREIGN KEY ( patient_ssn )
        REFERENCES patient ( ssn ),
    CONSTRAINT pk_admission PRIMARY KEY ( anum )
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