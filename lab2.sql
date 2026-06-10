Lab 1: Database Schema: Consider a simple database with one tables: BankAccount 

 Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

. Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 



mysql> CREATE TABLE BANKACCOUNT(ACCOUNT_ID VARCHAR(20) NOT NULL PRIMARY KEY,ACCOUNT_HOLDERNAME VARCHAR(50) NOT NULL,ACCOUNT_BALANCE DOUBLE NOT NULL);
Query OK, 0 rows affected (0.05 sec)

mysql> DESC BANKACCOUNT;
+--------------------+-------------+------+-----+---------+-------+
| Field              | Type        | Null | Key | Default | Extra |
+--------------------+-------------+------+-----+---------+-------+
| ACCOUNT_ID         | varchar(20) | NO   | PRI | NULL    |       |
| ACCOUNT_HOLDERNAME | varchar(50) | NO   |     | NULL    |       |
| ACCOUNT_BALANCE    | double      | NO   |     | NULL    |       |
+--------------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> INSERT INTO BANKACCOUNT VALUES('101','SRINIVAR',23000),('102','RAJU',25000),('103','HARISH',32000),('104','GANESH',46000),('105','SAMIKSHA',50000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM BANKACCOUNT;
+------------+--------------------+-----------------+
| ACCOUNT_ID | ACCOUNT_HOLDERNAME | ACCOUNT_BALANCE |
+------------+--------------------+-----------------+
| 101        | SRINIVAR           |           23000 |
| 102        | RAJU               |           25000 |
| 103        | HARISH             |           32000 |
| 104        | GANESH             |           46000 |
| 105        | SAMIKSHA           |           50000 |
+------------+--------------------+-----------------+
5 rows in set (0.00 sec)

mysql> SELECT ACCOUNT_HOLDERNAME, ACCOUNT_BALANCE FROM BANKACCOUNT;
+--------------------+-----------------+
| ACCOUNT_HOLDERNAME | ACCOUNT_BALANCE |
+--------------------+-----------------+
| SRINIVAR           |           23000 |
| RAJU               |           25000 |
| HARISH             |           32000 |
| GANESH             |           46000 |
| SAMIKSHA           |           50000 |
+--------------------+-----------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM BANKACCOUNT WHERE ACCOUNT_BALANCE > 30000;
+------------+--------------------+-----------------+
| ACCOUNT_ID | ACCOUNT_HOLDERNAME | ACCOUNT_BALANCE |
+------------+--------------------+-----------------+
| 103        | HARISH             |           32000 |
| 104        | GANESH             |           46000 |
| 105        | SAMIKSHA           |           50000 |
+------------+--------------------+-----------------+
3 rows in set (0.00 sec)

mysql> UPDATE BANKACCOUNT SET ACCOUNT_BALANCE=28000 WHERE ACCOUNT_ID='101'
    -> ;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM BANKACCOUNT;
+------------+--------------------+-----------------+
| ACCOUNT_ID | ACCOUNT_HOLDERNAME | ACCOUNT_BALANCE |
+------------+--------------------+-----------------+
| 101        | SRINIVAR           |           28000 |
| 102        | RAJU               |           25000 |
| 103        | HARISH             |           32000 |
| 104        | GANESH             |           46000 |
| 105        | SAMIKSHA           |           50000 |
+------------+--------------------+-----------------+
5 rows in set (0.00 sec)