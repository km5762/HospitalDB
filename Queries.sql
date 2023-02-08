-- NUMBER 9
SELECT * FROM equipmenttype WHERE equipmenttypeid IN (SELECT equipmenttypeid FROM canrepairequipment GROUP BY equipmenttypeid HAVING COUNT(employeeid) < 2);

-- NUMBER 10
SELECT futurevisit FROM admission WHERE admissiondate = (SELECT MAX(admissiondate) FROM admission WHERE ssn = '111-22-3333');

-- NUMBER 11
