-- 1) Создайте таблицу "Hospital_Facility" с полями "ID", "NAME", "TYPE".
CREATE TABLE Hospital_Facility (
    Facility_Id serial NOT NULL PRIMARY KEY,
    Facility_Name VARCHAR(100) NOT NULL,
    Facility_Type VARCHAR(50) NOT NULL,
    Bed_Count INTEGER DEFAULT 0,
    Established_Date DATE,
    Address VARCHAR(200)
);

-- 2) Вставьте 5 записей о больничных объектах
INSERT INTO Hospital_Facility (Facility_Id, Facility_Name, Facility_Type, Bed_Count, Established_Date, Address)
VALUES
(1, 'City General Hospital', 'General', 250, '1985-05-15', '123 Main Street'),
(2, 'Children''s Medical Center', 'Pediatric', 150, '1992-11-20', '456 Elm Avenue'),
(3, 'Central Trauma Unit', 'Trauma', 120, '2001-03-08', '789 Oak Boulevard'),
(4, 'Northwest Psychiatric', 'Psychiatric', 80, '1978-09-30', '321 Pine Road'),
(5, 'Riverside Clinic', 'Outpatient', 0, '2010-07-12', '654 Maple Lane');

-- 3) Получите информацию о больнице с ID=4

SELECT * FROM Hospital_Facility WHERE Facility_Id = 4;

-- 4) Обновите количество коек в больнице с ID=3

UPDATE Hospital_Facility 
SET Bed_Count = 140 
WHERE Facility_Id = 3;

-- 5) Создайте линейный график для отображения трендов по количеству коек в больницах

SELECT 
    Facility_Id,
    Facility_Name,
    Bed_Count,
    Established_Date
FROM 
    Hospital_Facility
ORDER BY 
    Facility_Id;

