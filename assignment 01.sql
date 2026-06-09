mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| e_commerce              |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
8 rows in set (0.01 sec)

mysql> use e_commerce;
Database changed

mysql> create table employee(employee_id int(10) not null primary key, employeename varchar(50) not null,salary double not null);
Query OK, 0 rows affected, 1 warning (0.04 sec)

mysql> insert into employee values(01,'MANI',25000),(02,'HARI',30000),(03,'ANUP',150000),(04,'MUKHESH',200000),(05,'KASHISH',180000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> DESC EMPLOYEE;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| employee_id  | int         | NO   | PRI | NULL    |       |
| employeename | varchar(50) | NO   |     | NULL    |       |
| salary       | double      | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM EMPLOYEE;
+-------------+--------------+--------+
| employee_id | employeename | salary |
+-------------+--------------+--------+
|           1 | MANI         |  25000 |
|           2 | HARI         |  30000 |
|           3 | ANUP         | 150000 |
|           4 | MUKHESH      | 200000 |
|           5 | KASHISH      | 180000 |
+-------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> UPDATE EMPLOYEE SET SALARY=60000 WHERE employee_id=2;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM EMPLOYEE;
+-------------+--------------+--------+
| employee_id | employeename | salary |
+-------------+--------------+--------+
|           1 | MANI         |  25000 |
|           2 | HARI         |  60000 |
|           3 | ANUP         | 150000 |
|           4 | MUKHESH      | 200000 |
|           5 | KASHISH      | 180000 |
+-------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> UPDATE EMPLOYEE SET employeename='SAURABH' WHERE employee_id=1;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM EMPLOYEE;
+-------------+--------------+--------+
| employee_id | employeename | salary |
+-------------+--------------+--------+
|           1 | SAURABH      |  25000 |
|           2 | HARI         |  60000 |
|           3 | ANUP         | 150000 |
|           4 | MUKHESH      | 200000 |
|           5 | KASHISH      | 180000 |
+-------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> DELETE FROM EMPLOYEE WHERE EMPLOYEE_ID=1;
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM EMPLOYEE;
+-------------+--------------+--------+
| employee_id | employeename | salary |
+-------------+--------------+--------+
|           2 | HARI         |  60000 |
|           3 | ANUP         | 150000 |
|           4 | MUKHESH      | 200000 |
|           5 | KASHISH      | 180000 |
+-------------+--------------+--------+
4 rows in set (0.00 sec)

mysql> DELETE FROM EMPLOYEE;
Query OK, 4 rows affected (0.01 sec)

mysql> SELECT * FROM EMPLOYEE;
Empty set (0.00 sec)

mysql> DESC EMPLOYEE;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| employee_id  | int         | NO   | PRI | NULL    |       |
| employeename | varchar(50) | NO   |     | NULL    |       |
| salary       | double      | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> create table employee(employee_id int(10) not null primary key, employeename varchar(50) not null,salary double not null);
ERROR 1050 (42S01): Table 'employee' already exists

mysql> insert into employee values(01,'MANI',25000),(02,'HARI',30000),(03,'ANUP',150000),(04,'MUKHESH',200000),(05,'KASHISH',180000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM EMPLOYEE;
+-------------+--------------+--------+
| employee_id | employeename | salary |
+-------------+--------------+--------+
|           1 | MANI         |  25000 |
|           2 | HARI         |  30000 |
|           3 | ANUP         | 150000 |
|           4 | MUKHESH      | 200000 |
|           5 | KASHISH      | 180000 |
+-------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> TRUNCATE TABLE EMPLOYEE;
Query OK, 0 rows affected (0.03 sec)

mysql> SELECT * FROM EMPLOYEE;
Empty set (0.00 sec)

mysql> DESC EMPLOYEE;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| employee_id  | int         | NO   | PRI | NULL    |       |
| employeename | varchar(50) | NO   |     | NULL    |       |
| salary       | double      | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> DROP TABLE EMPLOYEE;
Query OK, 0 rows affected (0.01 sec)

mysql> DESC EMPLOYEE;
ERROR 1146 (42S02): Table 'e_commerce.employee' doesn't exist

mysql> create table employee(employee_id int(10) not null primary key, employeename varchar(50) not null,salary double not null);
Query OK, 0 rows affected, 1 warning (0.01 sec)

mysql> insert into employee values(01,'MANI',25000),(02,'HARI',30000),(03,'ANUP',150000),(04,'MUKHESH',200000),(05,'KASHISH',180000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM EMPLOYEE;
+-------------+--------------+--------+
| employee_id | employeename | salary |
+-------------+--------------+--------+
|           1 | MANI         |  25000 |
|           2 | HARI         |  30000 |
|           3 | ANUP         | 150000 |
|           4 | MUKHESH      | 200000 |
|           5 | KASHISH      | 180000 |
+-------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> ALTER TABLE EMPLOYEE ADD EMAIL VARCHAR(20) NOT NULL;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM EMPLOYEE;
+-------------+--------------+--------+-------+
| employee_id | employeename | salary | EMAIL |
+-------------+--------------+--------+-------+
|           1 | MANI         |  25000 |       |
|           2 | HARI         |  30000 |       |
|           3 | ANUP         | 150000 |       |
|           4 | MUKHESH      | 200000 |       |
|           5 | KASHISH      | 180000 |       |
+-------------+--------------+--------+-------+
5 rows in set (0.00 sec)

mysql> desc employee;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| employee_id  | int         | NO   | PRI | NULL    |       |
| employeename | varchar(50) | NO   |     | NULL    |       |
| salary       | double      | NO   |     | NULL    |       |
| EMAIL        | varchar(20) | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> ALTER TABLE EMPLOYEE MODIFY employeename varchar(100) not null;
Query OK, 5 rows affected (0.04 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employee_id  | int          | NO   | PRI | NULL    |       |
| employeename | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
| EMAIL        | varchar(20)  | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> ALTER TABLE EMPLOYEE drop column EMAIL;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employee_id  | int          | NO   | PRI | NULL    |       |
| employeename | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> ALTER TABLE EMPLOYEE rename column salary to employeesalary;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employee_id    | int          | NO   | PRI | NULL    |       |
| employeename   | varchar(100) | NO   |     | NULL    |       |
| employeesalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> ALTER TABLE EMPLOYEE drop primary key;
Query OK, 5 rows affected (0.04 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employee_id    | int          | NO   |     | NULL    |       |
| employeename   | varchar(100) | NO   |     | NULL    |       |
| employeesalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> ALTER TABLE EMPLOYEE add constraint primary key(employee_id);
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employee_id    | int          | NO   | PRI | NULL    |       |
| employeename   | varchar(100) | NO   |     | NULL    |       |
| employeesalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)