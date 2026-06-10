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
8 rows in set (0.04 sec)


mysql> use e_commerce;
Database changed

mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| employee             |
| order_detail         |
| order_details        |
| product              |
+----------------------+
5 rows in set (0.01 sec)

mysql> select * from employee;
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

mysql> select * from employee limit 3;
+-------------+--------------+----------------+
| employee_id | employeename | employeesalary |
+-------------+--------------+----------------+
|           1 | MANI         |          25000 |
|           2 | HARI         |          30000 |
|           3 | ANUP         |         150000 |
+-------------+--------------+----------------+
3 rows in set (0.00 sec)

mysql> select * from employee limit 2;
+-------------+--------------+----------------+
| employee_id | employeename | employeesalary |
+-------------+--------------+----------------+
|           1 | MANI         |          25000 |
|           2 | HARI         |          30000 |
+-------------+--------------+----------------+
2 rows in set (0.00 sec)

mysql> select * from employee order by employeesalary;
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

mysql> select * from employee order by employeename;
+-------------+--------------+----------------+
| employee_id | employeename | employeesalary |
+-------------+--------------+----------------+
|           3 | ANUP         |         150000 |
|           2 | HARI         |          30000 |
|           5 | KASHISH      |         180000 |
|           1 | MANI         |          25000 |
|           4 | MUKHESH      |         200000 |
+-------------+--------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from employee order by employeename desc;
+-------------+--------------+----------------+
| employee_id | employeename | employeesalary |
+-------------+--------------+----------------+
|           4 | MUKHESH      |         200000 |
|           1 | MANI         |          25000 |
|           5 | KASHISH      |         180000 |
|           2 | HARI         |          30000 |
|           3 | ANUP         |         150000 |
+-------------+--------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from employee order by employeesalary desc;
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

mysql> select * from employee order by employeesalary desc limit 2;
+-------------+--------------+----------------+
| employee_id | employeename | employeesalary |
+-------------+--------------+----------------+
|           4 | MUKHESH      |         200000 |
|           5 | KASHISH      |         180000 |
+-------------+--------------+----------------+
2 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+--------+----------+------------------+----------+---------------+----------+
| customer_id | name   | city     | email            | phone_no | address       | pin_code |
+-------------+--------+----------+------------------+----------+---------------+----------+
| C01         | Gautam | bhiwandi | gautam@gmail.com | 852963   | bhavani nagar |   421305 |
| C02         | hari   | bhiwandi | hari@gmail.com   | 754123   | fenegaon      |   421302 |
| C03         | laya   | bhiwandi | laya@gmail.com   | 754175   | padmanagar    |   421302 |
| C04         | mani   | bhiwandi | mani@gmail.com   | 852746   | millenium     |   421536 |
| C05         | anup   | kurla    | anup@gmail.com   | 756423   | kural mall    |   400021 |
+-------------+--------+----------+------------------+----------+---------------+----------+
5 rows in set (0.00 sec)

mysql> select distinct city from customer;
+----------+
| city     |
+----------+
| bhiwandi |
| kurla    |
+----------+
2 rows in set (0.00 sec)

mysql> select city from customer;
+----------+
| city     |
+----------+
| bhiwandi |
| bhiwandi |
| bhiwandi |
| bhiwandi |
| kurla    |
+----------+
5 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+--------+----------+------------------+----------+---------------+----------+
| customer_id | name   | city     | email            | phone_no | address       | pin_code |
+-------------+--------+----------+------------------+----------+---------------+----------+
| C01         | Gautam | bhiwandi | gautam@gmail.com | 852963   | bhavani nagar |   421305 |
| C02         | hari   | bhiwandi | hari@gmail.com   | 754123   | fenegaon      |   421302 |
| C03         | laya   | bhiwandi | laya@gmail.com   | 754175   | padmanagar    |   421302 |
| C04         | mani   | bhiwandi | mani@gmail.com   | 852746   | millenium     |   421536 |
| C05         | anup   | kurla    | anup@gmail.com   | 756423   | kural mall    |   400021 |
+-------------+--------+----------+------------------+----------+---------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id between 'C01' to 'C03';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to 'C03'' at line 1
mysql> select * from customer where customer_id between 'C01' and 'C03';
+-------------+--------+----------+------------------+----------+---------------+----------+
| customer_id | name   | city     | email            | phone_no | address       | pin_code |
+-------------+--------+----------+------------------+----------+---------------+----------+
| C01         | Gautam | bhiwandi | gautam@gmail.com | 852963   | bhavani nagar |   421305 |
| C02         | hari   | bhiwandi | hari@gmail.com   | 754123   | fenegaon      |   421302 |
| C03         | laya   | bhiwandi | laya@gmail.com   | 754175   | padmanagar    |   421302 |
+-------------+--------+----------+------------------+----------+---------------+----------+
3 rows in set (0.00 sec)

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
5 rows in set (0.02 sec)

mysql> select * from order_details where order between '2026-06-01' and '2026-06-08';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'order between '2026-06-01' and '2026-06-08'' at line 1
mysql> select * from order_details where order_date between '2026-06-01' and '2026-06-08';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | C01         | P02        |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | C02         | P01        |       10 |      230000 | gpay         | 2026-06-07 00:00:00 | shipping     |
|      103 | C03         | P03        |       15 |      250000 | gpay         | 2026-06-08 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
3 rows in set (0.00 sec)

mysql> select * from order_details where order_date not between '2026-06-01' and '2026-06-08';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      104 | C04         | P04        |       17 |      240000 | gpay         | 2026-06-09 00:00:00 | shipping     |
|      105 | C05         | P05        |       13 |      280000 | gpay         | 2026-06-10 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
2 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+--------+----------+------------------+----------+---------------+----------+
| customer_id | name   | city     | email            | phone_no | address       | pin_code |
+-------------+--------+----------+------------------+----------+---------------+----------+
| C01         | Gautam | bhiwandi | gautam@gmail.com | 852963   | bhavani nagar |   421305 |
| C02         | hari   | bhiwandi | hari@gmail.com   | 754123   | fenegaon      |   421302 |
| C03         | laya   | bhiwandi | laya@gmail.com   | 754175   | padmanagar    |   421302 |
| C04         | mani   | bhiwandi | mani@gmail.com   | 852746   | millenium     |   421536 |
| C05         | anup   | kurla    | anup@gmail.com   | 756423   | kural mall    |   400021 |
+-------------+--------+----------+------------------+----------+---------------+----------+
5 rows in set (0.00 sec)


mysql> select * from customer where customer_id in ('C01','C02','C03');
+-------------+--------+----------+------------------+----------+---------------+----------+
| customer_id | name   | city     | email            | phone_no | address       | pin_code |
+-------------+--------+----------+------------------+----------+---------------+----------+
| C01         | Gautam | bhiwandi | gautam@gmail.com | 852963   | bhavani nagar |   421305 |
| C02         | hari   | bhiwandi | hari@gmail.com   | 754123   | fenegaon      |   421302 |
| C03         | laya   | bhiwandi | laya@gmail.com   | 754175   | padmanagar    |   421302 |
+-------------+--------+----------+------------------+----------+---------------+----------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_id not in ('C01','C02','C03');
+-------------+------+----------+----------------+----------+------------+----------+
| customer_id | name | city     | email          | phone_no | address    | pin_code |
+-------------+------+----------+----------------+----------+------------+----------+
| C04         | mani | bhiwandi | mani@gmail.com | 852746   | millenium  |   421536 |
| C05         | anup | kurla    | anup@gmail.com | 756423   | kural mall |   400021 |
+-------------+------+----------+----------------+----------+------------+----------+
2 rows in set (0.00 sec)

mysql> select * from customer where city is null;
Empty set (0.00 sec)

mysql> select * from customer where city is not null;
+-------------+--------+----------+------------------+----------+---------------+----------+
| customer_id | name   | city     | email            | phone_no | address       | pin_code |
+-------------+--------+----------+------------------+----------+---------------+----------+
| C01         | Gautam | bhiwandi | gautam@gmail.com | 852963   | bhavani nagar |   421305 |
| C02         | hari   | bhiwandi | hari@gmail.com   | 754123   | fenegaon      |   421302 |
| C03         | laya   | bhiwandi | laya@gmail.com   | 754175   | padmanagar    |   421302 |
| C04         | mani   | bhiwandi | mani@gmail.com   | 852746   | millenium     |   421536 |
| C05         | anup   | kurla    | anup@gmail.com   | 756423   | kural mall    |   400021 |
+-------------+--------+----------+------------------+----------+---------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where city='bhiwandi' and address='kurla mall';
Empty set (0.00 sec)

mysql> select * from customer where city='bhiwandi' or address='kurla mall';
+-------------+--------+----------+------------------+----------+---------------+----------+
| customer_id | name   | city     | email            | phone_no | address       | pin_code |
+-------------+--------+----------+------------------+----------+---------------+----------+
| C01         | Gautam | bhiwandi | gautam@gmail.com | 852963   | bhavani nagar |   421305 |
| C02         | hari   | bhiwandi | hari@gmail.com   | 754123   | fenegaon      |   421302 |
| C03         | laya   | bhiwandi | laya@gmail.com   | 754175   | padmanagar    |   421302 |
| C04         | mani   | bhiwandi | mani@gmail.com   | 852746   | millenium     |   421536 |
+-------------+--------+----------+------------------+----------+---------------+----------+
4 rows in set (0.00 sec)

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

mysql> select * from order_details where total_price> 250000;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      105 | C05         | P05        |       13 |      280000 | gpay         | 2026-06-10 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
1 row in set (0.00 sec)