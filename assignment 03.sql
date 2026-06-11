mysql> SHOW DATABASES;
+-------------------------+
| Database                |
+-------------------------+
| e_commerce              |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentinfo             |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
9 rows in set (0.01 sec)

mysql> USE E_COMMERCE;
Database changed

mysql> SHOW TABLES;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| bankaccount          |
| customer             |
| employee             |
| order_detail         |
| order_details        |
| product              |
+----------------------+
6 rows in set (0.02 sec)

mysql> SELECT * FROM EMPLOYEE;
+-------------+--------------+----------------+
| employee_id | employeename | employeesalary |
+-------------+--------------+----------------+
|           1 | MANI         |          25000 |
|           2 | HARI         |          30000 |
|           3 | ANUP         |         150000 |
|           4 | MUKHESH      |         200000 |
|           5 | KASHISH      |         180000 |
+-------------+--------------+----------------+
5 rows in set (0.00 sec)

mysql> alter table employee rename employees;
Query OK, 0 rows affected (0.02 sec)

mysql> SELECT * FROM EMPLOYEES;
+-------------+--------------+----------------+
| employee_id | employeename | employeesalary |
+-------------+--------------+----------------+
|           1 | MANI         |          25000 |
|           2 | HARI         |          30000 |
|           3 | ANUP         |         150000 |
|           4 | MUKHESH      |         200000 |
|           5 | KASHISH      |         180000 |
+-------------+--------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from employees where employeeSalary >50000;
+-------------+--------------+----------------+
| employee_id | employeename | employeesalary |
+-------------+--------------+----------------+
|           3 | ANUP         |         150000 |
|           4 | MUKHESH      |         200000 |
|           5 | KASHISH      |         180000 |
+-------------+--------------+----------------+
3 rows in set (0.00 sec)

mysql> select * from employees order by employeeSalary desc;
+-------------+--------------+----------------+
| employee_id | employeename | employeesalary |
+-------------+--------------+----------------+
|           4 | MUKHESH      |         200000 |
|           5 | KASHISH      |         180000 |
|           3 | ANUP         |         150000 |
|           2 | HARI         |          30000 |
|           1 | MANI         |          25000 |
+-------------+--------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from employees order by employeeSalary ;
+-------------+--------------+----------------+
| employee_id | employeename | employeesalary |
+-------------+--------------+----------------+
|           1 | MANI         |          25000 |
|           2 | HARI         |          30000 |
|           3 | ANUP         |         150000 |
|           5 | KASHISH      |         180000 |
|           4 | MUKHESH      |         200000 |
+-------------+--------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | C01         | P02        |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | C02         | P01        |       10 |      230000 | gpay         | 2026-06-07 00:00:00 | shipping     |
|      103 | C03         | P03        |       15 |      250000 | gpay         | 2026-06-08 00:00:00 | shipping     |
|      104 | C04         | P04        |       17 |      240000 | gpay         | 2026-06-09 00:00:00 | shipping     |
|      105 | C05         | P05        |       13 |      280000 | gpay         | 2026-06-10 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.00 sec)

mysql> create table orders(order_id int primary key, department varchar(50) not null, amount double not null);
Query OK, 0 rows affected (0.06 sec)

mysql> insert into orders values(1,'sales',1000),(2,'sales',1500),(3,'HR',800);
Query OK, 3 rows affected (0.06 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from orders;
+----------+------------+--------+
| order_id | department | amount |
+----------+------------+--------+
|        1 | sales      |   1000 |
|        2 | sales      |   1500 |
|        3 | HR         |    800 |
+----------+------------+--------+
3 rows in set (0.00 sec)

mysql> select * from orders;
+----------+------------+--------+
| order_id | department | amount |
+----------+------------+--------+
|        1 | sales      |   1000 |
|        2 | sales      |   1500 |
|        3 | HR         |    800 |
+----------+------------+--------+
3 rows in set (0.00 sec)

mysql> select department, sum(amount) as total_amount from orders group by department;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         2500 |
| HR         |          800 |
+------------+--------------+
2 rows in set (0.01 sec)

mysql> select department, avg(amount) as total_avg from orders group by department;
+------------+-----------+
| department | total_avg |
+------------+-----------+
| sales      |      1250 |
| HR         |       800 |
+------------+-----------+
2 rows in set (0.00 sec)

mysql> select department, sum(amount) as total_amount from orders group by department having sum(amount) > 1000;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         2500 |
+------------+--------------+
1 row in set (0.00 sec)

mysql> select * from employees;
+-------------+--------------+----------------+
| employee_id | employeename | employeesalary |
+-------------+--------------+----------------+
|           1 | MANI         |          25000 |
|           2 | HARI         |          30000 |
|           3 | ANUP         |         150000 |
|           4 | MUKHESH      |         200000 |
|           5 | KASHISH      |         180000 |
+-------------+--------------+----------------+
5 rows in set (0.00 sec)


mysql>  create table employee_details(employeeID int not null,name varchar(50) not null,department varchar(60) not null,salary double not null);
Query OK, 0 rows affected (0.02 sec)

mysql> insert into employee_details values(01,'allu arjun','HR',5000),(02,'shivani nigam','IT',7000),(03,'bharat kumar','IT',6000),(04,'choudhary neha','HR',5000),(05,'DJ Tillu','Finance',4500);
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee_details;
+------------+----------------+------------+--------+
| employeeID | name           | department | salary |
+------------+----------------+------------+--------+
|          1 | allu arjun     | HR         |   5000 |
|          2 | shivani nigam  | IT         |   7000 |
|          3 | bharat kumar   | IT         |   6000 |
|          4 | choudhary neha | HR         |   5000 |
|          5 | DJ Tillu       | Finance    |   4500 |
+------------+----------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department, count(*) as total_employee from employee_details group by department;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |              2 |
| IT         |              2 |
| Finance    |              1 |
+------------+----------------+
3 rows in set (0.00 sec)

mysql> select department, sum(salary) as total_salary from employee_details group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |        10000 |
| IT         |        13000 |
| Finance    |         4500 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql>
mysql> select department, avg(salary) as total_avg from employee_details group by department;
+------------+-----------+
| department | total_avg |
+------------+-----------+
| HR         |      5000 |
| IT         |      6500 |
| Finance    |      4500 |
+------------+-----------+
3 rows in set (0.00 sec)

mysql> select department, salary, count(*) from employee_details group by department,salary;
+------------+--------+----------+
| department | salary | count(*) |
+------------+--------+----------+
| HR         |   5000 |        2 |
| IT         |   7000 |        1 |
| IT         |   6000 |        1 |
| Finance    |   4500 |        1 |
+------------+--------+----------+
4 rows in set (0.00 sec)

mysql> select * from employee_details;
+------------+----------------+------------+--------+
| employeeID | name           | department | salary |
+------------+----------------+------------+--------+
|          1 | allu arjun     | HR         |   5000 |
|          2 | shivani nigam  | IT         |   7000 |
|          3 | bharat kumar   | IT         |   6000 |
|          4 | choudhary neha | HR         |   5000 |
|          5 | DJ Tillu       | Finance    |   4500 |
+------------+----------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department,count(*) as total from employee_details group by department having count(*) > 1;\
+------------+-------+
| department | total |
+------------+-------+
| HR         |     2 |
| IT         |     2 |
+------------+-------+
2 rows in set (0.00 sec)

mysql> select department,count(*) as total from employee_details group by department having count(*) <= 1;
+------------+-------+
| department | total |
+------------+-------+
| Finance    |     1 |
+------------+-------+
1 row in set (0.00 sec)

mysql>  select department,count(*) from employee_details group by department having count(*) > 1 ;
+------------+----------+
| department | count(*) |
+------------+----------+
| HR         |        2 |
| IT         |        2 |
+------------+----------+
2 rows in set (0.00 sec)