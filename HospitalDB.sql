CREATE TABLE Doctor(EmployeeID INTEGER, gender VARCHAR2, specialty VARCHAR2, GraduatedFrom VARCHAR2);
CREATE TABLE EquipmentTechnician(EmployeeID INTEGER);
CREATE TABLE CanRepairEquipment(EmployeeID INTEGER, EquipmentType VARCHAR2);
CREATE TABLE EquipmentType(ID INTEGER, Desc VARCHAR2, model VARCHAR2, instructions VARCHAR2, NumberOfUnits INTEGER);
CREATE TABLE Equipment (Serial# INTEGER, TypeID INTEGER, PurchaseYear INTEGER, LastInspection DATE, roomNum INTEGER);

