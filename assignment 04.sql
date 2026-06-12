mysql> create database joins;
Query OK, 1 row affected (0.02 sec)

mysql> use joins;
Database changed
mysql> create table department(department_id int not null primary key, department_name varchar(30) not null);
Query OK, 0 rows affected (0.02 sec)

mysql> desc department;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| department_id   | int         | NO   | PRI | NULL    |       |
| department_name | varchar(30) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> insert into department values(1,'HR'),(2,'IT'),(3,'FINANCE'),(4,'MARKETING');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM DEPARTMENT;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | FINANCE         |
|             4 | MARKETING       |
+---------------+-----------------+
4 rows in set (0.00 sec)


mysql> create table employee(employee_id int not null primary key,employee_name varchar(20) not null,department_id int,foreign key(department_id) references department(department_id));
Query OK, 0 rows affected (0.04 sec)

mysql> insert into employee values(1,'raju',1),(2,'ganesh',2),(3,'sai',3),(4,'mani',4);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+-------------+---------------+---------------+
| employee_id | employee_name | department_id |
+-------------+---------------+---------------+
|           1 | raju          |             1 |
|           2 | ganesh        |             2 |
|           3 | sai           |             3 |
|           4 | mani          |             4 |
+-------------+---------------+---------------+
4 rows in set (0.00 sec)

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | FINANCE         |
|             4 | MARKETING       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name, department_name from employee inner join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| raju          | HR              |
| ganesh        | IT              |
| sai           | FINANCE         |
| mani          | MARKETING       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name, department_name from employee left join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| raju          | HR              |
| ganesh        | IT              |
| sai           | FINANCE         |
| mani          | MARKETING       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select * from employee;
+-------------+---------------+---------------+
| employee_id | employee_name | department_id |
+-------------+---------------+---------------+
|           1 | raju          |             1 |
|           2 | ganesh        |             2 |
|           3 | sai           |             3 |
|           4 | mani          |             4 |
+-------------+---------------+---------------+
4 rows in set (0.00 sec)

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | FINANCE         |
|             4 | MARKETING       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name, department_name from employee cross join department;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| mani          | HR              |
| sai           | HR              |
| ganesh        | HR              |
| raju          | HR              |
| mani          | IT              |
| sai           | IT              |
| ganesh        | IT              |
| raju          | IT              |
| mani          | FINANCE         |
| sai           | FINANCE         |
| ganesh        | FINANCE         |
| raju          | FINANCE         |
| mani          | MARKETING       |
| sai           | MARKETING       |
| ganesh        | MARKETING       |
| raju          | MARKETING       |
+---------------+-----------------+
16 rows in set (0.00 sec)