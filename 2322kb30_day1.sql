mysql> create database kgcas
    -> 
    -> ;
Query OK, 1 row affected (0.00 sec)

mysql> create database kgcas;
ERROR 1007 (HY000): Can't create database 'kgcas'; database exists
mysql> create database manaksa;
Query OK, 1 row affected (0.00 sec)

mysql> use manaksa
Database changed
mysql> create table student_profile
    -> rollno int,
    -> name varchar(20),
    -> date_of_birth date,
    -> department varchar(10),
    -> studid int
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'int,
name varchar(20),
date_of_birth date,
department varchar(10),
studid int' at line 2
mysql> create table student_profile(
    -> rollno int,
    -> name varchar(20),
    -> date_of_birth date,
    -> department varchar(10));
Query OK, 0 rows affected (0.01 sec)

mysql> create table marks
    -> ;
ERROR 1113 (42000): A table must have at least 1 column
mysql> create table marks(
    -> regno int,
    -> mark1 int,
    -> mark2 int,
    -> mark3 int);
Query OK, 0 rows affected (0.01 sec)

mysql> insert into student_profile (rollno,name)value(001,'Arun');
Query OK, 1 row affected (0.00 sec)

mysql> insert into student_profile (date_of_birth,department)value('2005-09-16','bsccs');
Query OK, 1 row affected (0.00 sec)

mysql> select * from student_profile;
+--------+------+---------------+------------+
| rollno | name | date_of_birth | department |
+--------+------+---------------+------------+
|      1 | Arun | NULL          | NULL       |
|   NULL | NULL | 2005-09-16    | bsccs      |
+--------+------+---------------+------------+
2 rows in set (0.00 sec)

mysql> update student_profile set date_of_birth='2005-09-16';
Query OK, 1 row affected (0.00 sec)
Rows matched: 2  Changed: 1  Warnings: 0

mysql> select * from student_profile;
+--------+------+---------------+------------+
| rollno | name | date_of_birth | department |
+--------+------+---------------+------------+
|      1 | Arun | 2005-09-16    | NULL       |
|   NULL | NULL | 2005-09-16    | bsccs      |
+--------+------+---------------+------------+
2 rows in set (0.00 sec)

mysql> update student_profile set rollno=2 where name='Arun';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student_profile;
+--------+------+---------------+------------+
| rollno | name | date_of_birth | department |
+--------+------+---------------+------------+
|      2 | Arun | 2005-09-16    | NULL       |
|   NULL | NULL | 2005-09-16    | bsccs      |
+--------+------+---------------+------------+
2 rows in set (0.00 sec)

mysql> update student_profile set rollno=1 where name='Arun';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student_profile;
+--------+------+---------------+------------+
| rollno | name | date_of_birth | department |
+--------+------+---------------+------------+
|      1 | Arun | 2005-09-16    | NULL       |
|   NULL | NULL | 2005-09-16    | bsccs      |
+--------+------+---------------+------------+
2 rows in set (0.00 sec)

mysql> update add student_profile set department=bsccs where name='Arun';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'add student_profile set department=bsccs where name='Arun'' at line 1
mysql> update student_profile set department=bsccs where name='Arun';
ERROR 1054 (42S22): Unknown column 'bsccs' in 'field list'
mysql> update student_profile set department='bsccs' where name='Arun';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student_profile;
+--------+------+---------------+------------+
| rollno | name | date_of_birth | department |
+--------+------+---------------+------------+
|      1 | Arun | 2005-09-16    | bsccs      |
|   NULL | NULL | 2005-09-16    | bsccs      |
+--------+------+---------------+------------+
2 rows in set (0.00 sec)

mysql> update student_profile set rollno=2 where department='bscs';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select * from student_profile;
+--------+------+---------------+------------+
| rollno | name | date_of_birth | department |
+--------+------+---------------+------------+
|      1 | Arun | 2005-09-16    | bsccs      |
|   NULL | NULL | 2005-09-16    | bsccs      |
+--------+------+---------------+------------+
2 rows in set (0.00 sec)

mysql> update student_profile set department='it' where name='Arun';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student_profile;
+--------+------+---------------+------------+
| rollno | name | date_of_birth | department |
+--------+------+---------------+------------+
|      1 | Arun | 2005-09-16    | it         |
|   NULL | NULL | 2005-09-16    | bsccs      |
+--------+------+---------------+------------+
2 rows in set (0.00 sec)

mysql> update student_profile set rollno=2 where department='bsccs';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student_profile;
+--------+------+---------------+------------+
| rollno | name | date_of_birth | department |
+--------+------+---------------+------------+
|      1 | Arun | 2005-09-16    | it         |
|      2 | NULL | 2005-09-16    | bsccs      |
+--------+------+---------------+------------+
2 rows in set (0.00 sec)

mysql> notee
