# pr_07
Хлебова Екатерина, АБП-231. Практическая работа №7 «Работа с внешними приложениями».

# Цель практической работы: 
Научиться импортировать и экспортировать данные в базу данных SQL. Работа включает в себя загрузку данных из внешних источников в таблицы базы данных, а также экспорт данных из базы данных в различные форматы. Студенты научатся работать с внешними данными, преобразовывать их в нужный формат и интегрировать с существующими таблицами в базе данных.

# Ход работы:
1.	Установлено соединение с PostgreSQL и подключена база данных «medical_db».

![image](https://github.com/user-attachments/assets/07698150-e951-4209-8e55-05b61008de89)
![image](https://github.com/user-attachments/assets/ce01a769-6b83-4a27-941f-c23a86b24046)

- create_db_and_tables.sql - скрипт с кодами создания таблиц и выполнением запросов. SQL-скрипт можно найти в репозитории.
   
2. Создание ERD (Entity-Relationship Diagram).

![image](https://github.com/user-attachments/assets/ec71c5aa-1591-4527-8293-56b202771420)

- erd_diagram.png - диаграмма для базы данных. ERD можно найти в репозитории.

3. Импорт данных с помощью SQL. Добавлены данные для таблицы "Hospital_Facility".
   
![image](https://github.com/user-attachments/assets/e89f92c5-271d-4608-9b8d-5e7dc4b67b96)
![image](https://github.com/user-attachments/assets/2b1c90e3-a013-4dfd-828d-55be0b2e3a96)


4. Экспорт данных из базы данных SQL в файлы, чтобы получить информацию о больнице с ID=4.
   
![image](https://github.com/user-attachments/assets/84cb0596-a536-46a2-9a60-1729483a775c)

- hospital_facility_4.csv - файл CSV можно найти в репозитории.

5. Выполнены все индивидуальные задания. *Вариант №20.*

**1) Создайте таблицу "Hospital_Facility" с полями "ID", "NAME", "TYPE".**

```
CREATE TABLE Hospital_Facility (
    Facility_Id serial NOT NULL PRIMARY KEY,
    Facility_Name VARCHAR(100) NOT NULL,
    Facility_Type VARCHAR(50) NOT NULL,
    Bed_Count INTEGER DEFAULT 0,
    Established_Date DATE,
    Address VARCHAR(200)
);
```

**2) Вставьте 5 записей о больничных объектах**

```
INSERT INTO Hospital_Facility (Facility_Id, Facility_Name, Facility_Type, Bed_Count, Established_Date, Address)
VALUES
(1, 'City General Hospital', 'General', 250, '1985-05-15', '123 Main Street'),
(2, 'Children''s Medical Center', 'Pediatric', 150, '1992-11-20', '456 Elm Avenue'),
(3, 'Central Trauma Unit', 'Trauma', 120, '2001-03-08', '789 Oak Boulevard'),
(4, 'Northwest Psychiatric', 'Psychiatric', 80, '1978-09-30', '321 Pine Road'),
(5, 'Riverside Clinic', 'Outpatient', 0, '2010-07-12', '654 Maple Lane');
```

**3) Получите информацию о больнице с ID=4**

```
SELECT * FROM Hospital_Facility WHERE Facility_Id = 4;
```
![image](https://github.com/user-attachments/assets/ae9d7d71-e5bf-46da-a6ef-6e7421cab7dd)

**4) Обновите количество коек в больнице с ID=3**

```
UPDATE Hospital_Facility 
SET Bed_Count = 140 
WHERE Facility_Id = 3;
```
![image](https://github.com/user-attachments/assets/d3e466c4-c07b-40f9-8a09-7fa9adf74844)
![image](https://github.com/user-attachments/assets/68bfa250-19d1-4aee-a1fe-df2b19604f40)

**5) Создайте линейный график для отображения трендов по количеству коек в больницах**

![image](https://github.com/user-attachments/assets/7cdcc049-8ead-4a43-a099-158728ba00b6)

- Khlebova_Ekaterina_Maksimovna.ipynb - Jupyter Notebook с подключением к базе данных, вставкой и обновлением данных, а также визуализацией информации. Файл можно найти в репозитории

# Вывод: 
В ходе практической работы были освоены базовый принцип работы с данными в базе данных SQL. Были выработаны такие навыки, как: загрузка данных из внешних источников в таблицы базы данных, экспорт данных из базы данных в различные форматы и работа с внешними данными.
