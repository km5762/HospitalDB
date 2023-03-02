-- PROBLEM 1
CREATE OR replace TRIGGER tr_examine_insert
  BEFORE INSERT ON examine
  FOR EACH ROW
DECLARE
    is_critical INTEGER;
BEGIN
    SELECT Count(*)
    INTO   is_critical
    FROM   (SELECT admissionnum
            FROM   stayin
            WHERE  roomnum IN (SELECT roomnum
                               FROM   roomservice
                               WHERE  service = 'ICU'))
    WHERE  admissionnum = :new.admissionnum;

    IF ( is_critical > 0
         AND :new.doctorscomment IS NULL ) THEN
      Raise_application_error(-20001,
      'examination on patient who has visited  the ICU must contain a comment');
    END IF;
END;

/
-- PROBLEM 2
CREATE OR replace TRIGGER tr_insertorupdate_admission
  BEFORE INSERT OR UPDATE ON admission
  FOR EACH ROW
BEGIN
    :new.insurancepayment := ( 0.65 * :new.totalpayment );
END;

/
-- PROBLEM 3
CREATE OR replace TRIGGER tr_insertorupdate_employee_emp
  BEFORE INSERT OR UPDATE ON employee
  FOR EACH ROW
DECLARE
    dm_exists INTEGER;
BEGIN
    SELECT Count(*)
    INTO   dm_exists
    FROM   employee
    WHERE  employeeid = :new.supervisorid
           AND employeerank = 'Division Manager';

    IF ( dm_exists = 0
         AND :new.employeerank = 'Employee' ) THEN
      Raise_application_error(-20002,
      'regular employees must have a corresponding division manager');
    END IF;
END;

/
-- PROBLEM 4
CREATE OR replace TRIGGER tr_insertorupdate_employee_div
  BEFORE INSERT OR UPDATE ON employee
  FOR EACH ROW
DECLARE
    gm_exists INTEGER;
BEGIN
    SELECT Count(*)
    INTO   gm_exists
    FROM   employee
    WHERE  employeeid = :new.supervisorid
           AND employeerank = 'General Manager';

    IF ( gm_exists = 0
         AND :new.employeerank = 'Division Manager' ) THEN
      Raise_application_error(-20002,
      'Division Managers must have a corresponding general manager');
    END IF;
END;

/
CREATE OR replace TRIGGER tr_insertorupdate_employee_gm
  BEFORE INSERT OR UPDATE ON employee
  FOR EACH ROW
BEGIN
    IF ( :new.employeerank = 'General Manager'
         AND :new.supervisorid IS NOT NULL ) THEN
      Raise_application_error(-20002,
      'General Managers must not have a supervisor')
      ;
    END IF;
END;

/
-- PROBLEM 5
CREATE OR replace TRIGGER tr_insert_stayin
  BEFORE INSERT ON stayin
  FOR EACH ROW
DECLARE
    is_emergency INTEGER;
BEGIN
    SELECT Count(*)
    INTO   is_emergency
    FROM   roomservice
    WHERE  roomservice.roomnum = :new.roomnum
           AND roomservice.service = 'Emergency Room';

    IF ( is_emergency <> 0 ) THEN
      UPDATE admission
      SET    futurevisit = To_char(Add_months(SYSDATE, 2), 'DD-MON-YYYY')
      WHERE  admissionnum = :new.admissionnum;
    END IF;
END;

/
set serveroutput ON;
--last inspected when it was made, always has a date
-- PROBLEM 6
CREATE OR replace TRIGGER tr_insert_equipment
  BEFORE INSERT ON equipment
  FOR EACH ROW
DECLARE
    can_beserviced INTEGER;
BEGIN
    SELECT Count(*)
    INTO   can_beserviced
    FROM   canrepairequipment
    WHERE  :new.equipmenttypeid = canrepairequipment.equipmenttypeid;

    IF ( Months_between(SYSDATE, :new.lastinspection) > 1
         AND can_beserviced != 0 ) THEN
      :new.lastinspection := SYSDATE;
    END IF;
END;

/ 