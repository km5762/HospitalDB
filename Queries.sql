--NUMBER 1
SELECT
    employeeid,
    specialty,
    gender,
    graduatedfrom
FROM
    doctor
WHERE
    graduatedfrom = 'WPI';
--NUMBER 2
SELECT
    employeeid,
    firstname
    || ' '
    || lastname AS name,
    salary
FROM
    employee
WHERE
    supervisorid = 3;
--NUMBER 3
SELECT
    ssn,
    SUM(insurancepayment) AS totalinsurancepayment
FROM
    admission
GROUP BY
    ssn;
--NUMBER 4
SELECT
    ssn,
    firstname,
    lastname,
    0 AS numvisits
FROM
    patient
WHERE
    NOT EXISTS (
        SELECT
            1
        FROM
            admission
        WHERE
            admission.ssn = patient.ssn
    )
UNION
SELECT
    admission.ssn,
    firstname,
    lastname,
    COUNT(admission.ssn) AS numvisits
FROM
    admission, patient
where admission.ssn = patient.ssn
GROUP BY
    admission.ssn, firstname, lastname;
-- NUMBER 9
SELECT
    *
FROM
    equipmenttype
WHERE
    equipmenttypeid IN (
        SELECT
            equipmenttypeid
        FROM
            canrepairequipment
        GROUP BY
            equipmenttypeid
        HAVING
            COUNT(employeeid) < 2
    );

-- NUMBER 10
SELECT
    futurevisit
FROM
    admission
WHERE
    admissiondate = (
        SELECT
            MAX(admissiondate)
        FROM
            admission
        WHERE
            ssn = '111-22-3333'
    );

-- NUMBER 11
SELECT
    employeeid
FROM
    (
        SELECT
            admissionnum
        FROM
            admission
        WHERE
            ssn = '111-22-3333'
    ) r1,
    examine
WHERE
    r1.admissionnum = examine.admissionnum
GROUP BY
    employeeid
HAVING
    COUNT(employeeid) > 2;

-- NUMBER 12
(
    SELECT
        equipmenttypeid
    FROM
        equipment
    WHERE
        purchaseyear = 2010
)
INTERSECT
(
    SELECT
        equipmenttypeid
    FROM
        equipment
    WHERE
        purchaseyear = 2011
);