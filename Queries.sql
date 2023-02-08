-- NUMBER 9
SELECT * FROM equipmenttype WHERE equipmenttypeid IN (SELECT equipmenttypeid FROM canrepairequipment GROUP BY equipmenttypeid HAVING COUNT(employeeid) < 2);