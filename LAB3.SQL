/*	
Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order
*/

mysql> create database studentinfo;
Query OK, 1 row affected (0.01 sec)

mysql> use studentinfo;
Database changed

mysql> create table student(stud_id int primary key,FirstName varchar(50) not null,LastName varchar(50) not null,Age int not null,Phoneno int not null,Address varchar(100) not null);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into student values(101,'ANUP','PAL',22,852635,'KURAL MALL'),(102,'HARI','CHERYPELLI',20,753241,'FENEGOAN'),(103,'KASHISH','GAJBHIYE',21,8695241,'DIVA'),(104,'MANI','VENGAL',22,8963214,'PADMANAGAR'),(105,'SAURABH','SONAKAR',20,456325,'KALYAN');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM STUDENT;
+---------+-----------+------------+-----+---------+------------+
| stud_id | FirstName | LastName   | Age | Phoneno | Address    |
+---------+-----------+------------+-----+---------+------------+
|     101 | ANUP      | PAL        |  22 |  852635 | KURAL MALL |
|     102 | HARI      | CHERYPELLI |  20 |  753241 | FENEGOAN   |
|     103 | KASHISH   | GAJBHIYE   |  21 | 8695241 | DIVA       |
|     104 | MANI      | VENGAL     |  22 | 8963214 | PADMANAGAR |
|     105 | SAURABH   | SONAKAR    |  20 |  456325 | KALYAN     |
+---------+-----------+------------+-----+---------+------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM STUDENT ORDER BY LASTNAME;
+---------+-----------+------------+-----+---------+------------+
| stud_id | FirstName | LastName   | Age | Phoneno | Address    |
+---------+-----------+------------+-----+---------+------------+
|     102 | HARI      | CHERYPELLI |  20 |  753241 | FENEGOAN   |
|     103 | KASHISH   | GAJBHIYE   |  21 | 8695241 | DIVA       |
|     101 | ANUP      | PAL        |  22 |  852635 | KURAL MALL |
|     105 | SAURABH   | SONAKAR    |  20 |  456325 | KALYAN     |
|     104 | MANI      | VENGAL     |  22 | 8963214 | PADMANAGAR |
+---------+-----------+------------+-----+---------+------------+
5 rows in set (0.00 sec)