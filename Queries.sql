--Report the id, specialty, gender and school of graduation for doctors that have 
--graduated from WPI (“WPI”).
SELECT employeeid,
       specialty,
       gender,
       graduatedfrom
FROM   doctor
WHERE  graduatedfrom = 'WPI';

--For a given division manager (say, ID = 10), report all regular employees that are 
--supervised by this manager. Display the employees ID, names, and salary.
SELECT employeeid,
       firstname
       || ' '
       || lastname AS name,
       salary
FROM   employee
WHERE  supervisorid = 3;

--For each patient, report the sum of amounts paid by the insurance company for that 
--patient, i.e., report the patients SSN, and the sum of insurance payments over all visits. 
--Note: If you keep the insurance coverage as a percentage, then compute this percentage 
--before getting the sum.
SELECT ssn,
       SUM(insurancepayment) AS totalinsurancepayment
FROM   admission
GROUP  BY ssn;

--Report the number of visits done for each patient, i.e., for each patient, report the 
--patient SSN, first and last names, and the count of visits done by this patient.
SELECT ssn,
       firstname,
       lastname,
       0 AS numvisits
FROM   patient
WHERE  NOT EXISTS (SELECT 1
                   FROM   admission
                   WHERE  admission.ssn = patient.ssn)
UNION
SELECT admission.ssn,
       firstname,
       lastname,
       Count(admission.ssn) AS numvisits
FROM   admission,
       patient
WHERE  admission.ssn = patient.ssn
GROUP  BY admission.ssn,
          firstname,
          lastname;

--Report the room number that has an equipment unit with serial number ‘A01-02X’.
SELECT roomnum
FROM   equipment
WHERE  serialnum = 'A01-02X';

--Report the employee who has access to the largest number of rooms. We need the 
--employee ID, and the number of rooms they can access. 
--Note: If there are several employees with the same maximum number, then report all of 
--these employees.
SELECT employeeid,
       accesscount
FROM   (SELECT employeeid,
               Count(roomnum) AS accesscount
        FROM   roomaccess
        GROUP  BY employeeid)
WHERE  accesscount = (SELECT Max(Count(roomnum))
                      FROM   roomaccess
                      GROUP  BY employeeid);

--Report the number of regular employees, division managers, and general managers in 
--the hospital.
((SELECT 'Regular employees' AS TYPE,
         Count(employeeid)   AS COUNT
  FROM   employee
  WHERE  employeerank = 'Employee'
  GROUP  BY employeerank)
 UNION
 (SELECT 'Division managers' AS TYPE,
         Count(employeeid)   AS COUNT
  FROM   employee
  WHERE  employeerank = 'Division Manager'
  GROUP  BY employeerank)
 UNION
 (SELECT 'General managers' AS TYPE,
         Count(employeeid)  AS COUNT
  FROM   employee
  WHERE  employeerank = 'General Manager'
  GROUP  BY employeerank))
ORDER  BY count DESC;

--For patients who have a scheduled future visit (which is part of their most recent visit), 
--report that patient’s SSN, first name, and last name, and the visit date. Do not report 
--patients who do not have a scheduled visit.
SELECT ssn,
       firstname,
       lastname
FROM   (SELECT ssn
        FROM   admission
        WHERE  futurevisit IS NOT NULL)
       NATURAL join patient;

--Report all equipment types that have less than two technicians that can maintain them.
SELECT *
FROM   equipmenttype
WHERE  equipmenttypeid IN (SELECT equipmenttypeid
                           FROM   canrepairequipment
                           GROUP  BY equipmenttypeid
                           HAVING Count(employeeid) < 2);

--Report the date of the coming future visit for patient with SSN = 111-22-3333. 
--Note: This date should exist in the last (most recent) visit of that patient.
SELECT futurevisit
FROM   admission
WHERE  admissiondate = (SELECT Max(admissiondate)
                        FROM   admission
                        WHERE  ssn = '111-22-3333');

--For patient with SSN = 111-22-3333, report the doctors (only ID) who have examined 
--this patient more than 2 times.
SELECT employeeid
FROM   (SELECT admissionnum
        FROM   admission
        WHERE  ssn = '111-22-3333') r1,
       examine
WHERE  r1.admissionnum = examine.admissionnum
GROUP  BY employeeid
HAVING Count(employeeid) > 2;

--Report the equipment types (only the ID) for which the hospital has purchased 
--equipment (units) in both 2010 and 2011. Do not report duplication.
(SELECT equipmenttypeid
 FROM   equipment
 WHERE  purchaseyear = 2010)
INTERSECT
(SELECT equipmenttypeid
 FROM   equipment
 WHERE  purchaseyear = 2011); 