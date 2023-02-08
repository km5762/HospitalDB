-- NUMBER 9
SELECT * FROM equipmenttype WHERE equipmenttypeid IN (SELECT equipmenttypeid FROM canrepairequipment GROUP BY equipmenttypeid HAVING COUNT(employeeid) < 2);

-- NUMBER 10
SELECT futurevisit FROM admission WHERE admissiondate = (SELECT MAX(admissiondate) FROM admission WHERE ssn = '111-22-3333');

-- NUMBER 11
SELECT employeeid FROM (SELECT admissionnum FROM admission WHERE ssn = '111-22-3333') r1, examine WHERE r1.admissionnum = examine.admissionnum GROUP BY employeeid HAVING count(employeeid) > 2;

-- NUMBER 12
(SELECT equipmenttypeid FROM equipment WHERE purchaseyear = 2010) INTERSECT (SELECT equipmenttypeid FROM equipment WHERE purchaseyear = 2011);