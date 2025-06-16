mysql> create database student
    -> create database student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'create database student' at line 2
mysql> create database student(
    -> create database students;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(
create database students' at line 1
mysql> create database student;
ERROR 1007 (HY000): Can't create database 'student'; database exists
mysql> Terminal close -- exit!
mysql> create database mydatabase;
Query OK, 1 row affected (0.00 sec)

mysql> use mydatabase;
Database changed
mysql> create table studentsprofile(
    -> rollno int,
    -> name varchar(15),
    -> department varchar(15),
    -> subject varchar(15));
Query OK, 0 rows affected (0.01 sec)

mysql> insert into studentsprofile values(1,'Arun','IT','DS'),(2,'Anu','CS','java'),(2,'Bhava','BCA','english'));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 1
mysql> insert into studentsprofile values(1,'Arun','IT','DS'),(2,'Anu','CS','java'),(2,'Bhava','BCA','english');
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select* from studentsprofile;
+--------+-------+------------+---------+
| rollno | name  | department | subject |
+--------+-------+------------+---------+
|      1 | Arun  | IT         | DS      |
|      2 | Anu   | CS         | java    |
|      2 | Bhava | BCA        | english |
+--------+-------+------------+---------+
3 rows in set (0.00 sec)

mysql> create table subjects(
    -> rollno int,
    -> subject varchar(15));
Query OK, 0 rows affected (0.01 sec)

mysql> insert into subjects value(1,'tamil'),(1,'english'),(1,'java');
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> insert into subjects value(2,'english'),(2,'tamil'),(2,'java');
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> insert into subjects value(3,'tamil'),(3,'java'),(3,'english');
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select* from subjects;
+--------+---------+
| rollno | subject |
+--------+---------+
|      1 | tamil   |
|      1 | english |
|      1 | java    |
|      2 | english |
|      2 | tamil   |
|      2 | java    |
|      3 | tamil   |
|      3 | java    |
|      3 | english |
+--------+---------+
9 rows in set (0.00 sec)

mysql> create table department(
    -> depid int,
    -> depname varchar(15),
    -> mentor varchar(10));
Query OK, 0 rows affected (0.01 sec)

mysql> insert into department values(1,'CS','selvi'),(2,'IT','priya'),(3,'BCA','Anu');
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select* from department;
+-------+---------+--------+
| depid | depname | mentor |
+-------+---------+--------+
|     1 | CS      | selvi  |
|     2 | IT      | priya  |
|     3 | BCA     | Anu    |
+-------+---------+--------+
3 rows in set (0.00 sec)

mysql> select* from studentsprofile;
+--------+-------+------------+---------+
| rollno | name  | department | subject |
+--------+-------+------------+---------+
|      1 | Arun  | IT         | DS      |
|      2 | Anu   | CS         | java    |
|      2 | Bhava | BCA        | english |
+--------+-------+------------+---------+
3 rows in set (0.00 sec)

mysql> alter table studentsprofile drop column subjects;
ERROR 1091 (42000): Can't DROP COLUMN `subjects`; check that it exists
mysql> alter table studentsprofile drop column subject;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select* from studentsprofile;
+--------+-------+------------+
| rollno | name  | department |
+--------+-------+------------+
|      1 | Arun  | IT         |
|      2 | Anu   | CS         |
|      2 | Bhava | BCA        |
+--------+-------+------------+
3 rows in set (0.00 sec)

mysql> select name from studentsprofile;
+-------+
| name  |
+-------+
| Arun  |
| Anu   |
| Bhava |
+-------+
3 rows in set (0.00 sec)

mysql> update studentsprofile set name='Bhava'where rollno=3;
Query OK, 0 rows affected (0.01 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select name from studentsprofile;
+-------+
| name  |
+-------+
| Arun  |
| Anu   |
| Bhava |
+-------+
3 rows in set (0.00 sec)

mysql> select* from studentsprofile;
+--------+-------+------------+
| rollno | name  | department |
+--------+-------+------------+
|      1 | Arun  | IT         |
|      2 | Anu   | CS         |
|      2 | Bhava | BCA        |
+--------+-------+------------+
3 rows in set (0.00 sec)

mysql> update studentsprofile set rollno=3 where name='Bhava';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select* from studentsprofile;
+--------+-------+------------+
| rollno | name  | department |
+--------+-------+------------+
|      1 | Arun  | IT         |
|      2 | Anu   | CS         |
|      3 | Bhava | BCA        |
+--------+-------+------------+
3 rows in set (0.00 sec)

mysql> select top 3 * from department;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '3 * from department' at line 1
mysql> select top 3 * from studentsprofile;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '3 * from studentsprofile' at line 1
mysql> select * from studentsprofile limit 2;
+--------+------+------------+
| rollno | name | department |
+--------+------+------------+
|      1 | Arun | IT         |
|      2 | Anu  | CS         |
+--------+------+------------+
2 rows in set (0.00 sec)

mysql> select * from studentsprofile limit 2 offset 3;
Empty set (0.00 sec)

mysql> select * from studentsprofile limit 2 ;
+--------+------+------------+
| rollno | name | department |
+--------+------+------------+
|      1 | Arun | IT         |
|      2 | Anu  | CS         |
+--------+------+------------+
2 rows in set (0.00 sec)

mysql> select * from studentsprofile where deptid =2 or deptid=3;
ERROR 1054 (42S22): Unknown column 'deptid' in 'where clause'
mysql> select * from department where deptid =2 or deptid=3;
ERROR 1054 (42S22): Unknown column 'deptid' in 'where clause'
mysql> select * from department where deptid in(2,3);
ERROR 1054 (42S22): Unknown column 'deptid' in 'where clause'
mysql> select * from department;
+-------+---------+--------+
| depid | depname | mentor |
+-------+---------+--------+
|     1 | CS      | selvi  |
|     2 | IT      | priya  |
|     3 | BCA     | Anu    |
+-------+---------+--------+
3 rows in set (0.00 sec)

mysql> select * from department where depid in(2,3);
+-------+---------+--------+
| depid | depname | mentor |
+-------+---------+--------+
|     2 | IT      | priya  |
|     3 | BCA     | Anu    |
+-------+---------+--------+
2 rows in set (0.00 sec)

mysql> select * from department where depid =2 or depid=3;
+-------+---------+--------+
| depid | depname | mentor |
+-------+---------+--------+
|     2 | IT      | priya  |
|     3 | BCA     | Anu    |
+-------+---------+--------+
2 rows in set (0.00 sec)

mysql> select * from department where depid between 1 and 2;
+-------+---------+--------+
| depid | depname | mentor |
+-------+---------+--------+
|     1 | CS      | selvi  |
|     2 | IT      | priya  |
+-------+---------+--------+
2 rows in set (0.00 sec)

mysql> select * from department where depid between 1 and 3;
+-------+---------+--------+
| depid | depname | mentor |
+-------+---------+--------+
|     1 | CS      | selvi  |
|     2 | IT      | priya  |
|     3 | BCA     | Anu    |
+-------+---------+--------+
3 rows in set (0.00 sec)

mysql> select depid as deptid,from department;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'from department' at line 1
mysql> select depid as deptid from department;
+--------+
| deptid |
+--------+
|      1 |
|      2 |
|      3 |
+--------+
3 rows in set (0.00 sec)

mysql> select * from studentsprofile where name like'%b';
Empty set (0.00 sec)

mysql> select * from studentsprofile where name like'%b%';
+--------+-------+------------+
| rollno | name  | department |
+--------+-------+------------+
|      3 | Bhava | BCA        |
+--------+-------+------------+
1 row in set (0.00 sec)

mysql> select * from studentsprofile where name like'_a%';
Empty set (0.00 sec)

mysql> select * from studentsprofile where name like '_A%';
Empty set (0.00 sec)

mysql> select * from studentsprofile where name like 'A%';
+--------+------+------------+
| rollno | name | department |
+--------+------+------------+
|      1 | Arun | IT         |
|      2 | Anu  | CS         |
+--------+------+------------+
2 rows in set (0.00 sec)

mysql> select * from studentsprofile where name like '%B';
Empty set (0.00 sec)

mysql> select * from studentsprofile where name like 'A%';
+--------+------+------------+
| rollno | name | department |
+--------+------+------------+
|      1 | Arun | IT         |
|      2 | Anu  | CS         |
+--------+------+------------+
2 rows in set (0.00 sec)

mysql> notee
