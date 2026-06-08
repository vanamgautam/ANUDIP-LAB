
/*     
Create Database StudentManagementSystem

1.Create Table student

with attribute:  ●StudentID (Primary Key)
●Name
●Age
●Address


2.Create a table with named Feedback 

with attributes: ● FeedbackID (Primary Key) 
● StudentID (Foreign key) 
● Date 
● InstructorName 
● Feedback

Add 5 Records in table

 */


mysql> create database studentmanagementsystem;
Query OK, 1 row affected (0.01 sec)


mysql> use studentmanagementsystem;
Database changed

mysql> create table student(student_id varchar(10) not null primary key, name varchar(50) not null, age int(4) not null, address varchar(50) not null);
Query OK, 0 rows affected, 1 warning (0.03 sec)

mysql> insert into student values('S01','SAI',21,'FENEGOAN'),('S02','MANI',22,'PADMANAGAR'),('S03','ANUP',23,'KURLA'),('S04','SAURABH',20,'KALYAN'),('S05','GAUTAM',22,'KAMATGHAR');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> DESC STUDENT
    -> ;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | varchar(10) | NO   | PRI | NULL    |       |
| name       | varchar(50) | NO   |     | NULL    |       |
| age        | int         | NO   |     | NULL    |       |
| address    | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> SELECT * FROM STUDENT;
+------------+---------+-----+------------+
| student_id | name    | age | address    |
+------------+---------+-----+------------+
| S01        | SAI     |  21 | FENEGOAN   |
| S02        | MANI    |  22 | PADMANAGAR |
| S03        | ANUP    |  23 | KURLA      |
| S04        | SAURABH |  20 | KALYAN     |
| S05        | GAUTAM  |  22 | KAMATGHAR  |
+------------+---------+-----+------------+
5 rows in set (0.00 sec)


mysql> CREATE TABLE FEEDBACK(feedback_id varchar(10) not null primary key,student_id varchar(10) not null,date datetime not null,InstructorName varchar(50) not null,feedback varchar(100) not null,foreign key(student_id) references student(student_id));
Query OK, 0 rows affected (0.04 sec)

mysql> insert into feedback values('F01','S01','2026-01-21','SONI MAM','SESSION IS OK'),('F02','S02','2026-01-02','RAJU SIR','SESSION IS EXCELLENT'),('F03','S03','2026-01-05','SUNIL SIR','SESSION IS NICE'),('F04','S04','2026-01-11','RAVI SIR','SESSION IS INFORMATIVE'),('F05','S05','2026-01-25','AMBIKA MAM','SESSION IS GOOD');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> DESC FEEDBACK;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| feedback_id    | varchar(10)  | NO   | PRI | NULL    |       |
| student_id     | varchar(10)  | NO   | MUL | NULL    |       |
| date           | datetime     | NO   |     | NULL    |       |
| InstructorName | varchar(50)  | NO   |     | NULL    |       |
| feedback       | varchar(100) | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM FEEDBACK;
+-------------+------------+---------------------+----------------+------------------------+
| feedback_id | student_id | date                | InstructorName | feedback               |
+-------------+------------+---------------------+----------------+------------------------+
| F01         | S01        | 2026-01-21 00:00:00 | SONI MAM       | SESSION IS OK          |
| F02         | S02        | 2026-01-02 00:00:00 | RAJU SIR       | SESSION IS EXCELLENT   |
| F03         | S03        | 2026-01-05 00:00:00 | SUNIL SIR      | SESSION IS NICE        |
| F04         | S04        | 2026-01-11 00:00:00 | RAVI SIR       | SESSION IS INFORMATIVE |
| F05         | S05        | 2026-01-25 00:00:00 | AMBIKA MAM     | SESSION IS GOOD        |
+-------------+------------+---------------------+----------------+------------------------+
5 rows in set (0.00 sec)