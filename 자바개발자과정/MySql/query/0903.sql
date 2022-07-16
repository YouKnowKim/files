-- 사원번호, 사원이름, 월급, 입사날자, 부서명, 부서위치, 월급등급
-- 단, 1987년에 입사한 사원

SELECT empno, ename, sal, hiredate, dept.DNAME, dept.LOC, salgrade.grade
FROM emp join dept ON emp.deptno = dept.deptno JOIN salgrade
WHERE year(hiredate) = 1987 AND (emp.sal BETWEEN salgrade.losal AND salgrade.hisal);

SELECT STR_TO_DATE('20080501','%Y%m%D');

CREATE TABLE emp_copy
AS 
SELECT * FROM emp;

delete FROM emp_copy
WHERE deptno = 20;

START TRANSACTION;

UPDATE emp SET deptno = 10 WHERE empno = 7782;
savepoint a;
INSERT INTO emp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (7999, 'tom', 'salesman',7782, CURDATE(), 2000, 2000, 10);

ROLLBACK TO a;



CREATE DATABASE study_db DEFAULT CHARACTER SET UTF8;


DROP DATABASE if EXISTS study_db;

USE mycompany
CREATE TABLE if NOT EXISTS dept1
(
	deptno TINYINT,
	dname VARCHAR(20),
	loc  VARCHAR(20)
) DEFAULT CHARACTER SET UTF8;

INSERT INTO dept1
VALUES(10, '개발팀', '인창동');

INSERT INTO dept1
VALUES(10, '경영지원실', '해운대');

CREATE TABLE emp_clerk
AS
SELECT empno, ename, sal, job 
FROM emp
WHERE job = 'clerk';

DESC emp_clerk;
SELECT * FROM emp_clerk;

CREATE TABLE emp_dept
AS
SELECT empno AS "Employee Number", ename AS "Employee Name", sal AS "Salary",
     dname AS "Department Name", loc AS "Location"
FROM emp JOIN dept on emp.DEPTNO = dept.deptno
WHERE sal >= 2000;

desc emp_dept;
SELECT * FROM emp_dept;


CREATE TABLE department
(
	id INT(7),
	NAME VARCHAR(25)
);

DESC department;


CREATE TABLE employ
(
	id INT(7), 
	last_name VARCHAR(25),
	first_name VARCHAR(25),
	dept_id INT(7)
)

DESC employ;

DROP TABLE emp30;


CREATE TABLE dept30
AS
SELECT empno, ename, sal*12 "Annual Salary", hiredate
FROM emp
WHERE deptno = 30;

ALTER TABLE dept30
ADD COLUMN job varchar(9);

SELECT * FROM dept30;

ALTER TABLE dept30
ADD COLUMN sal INT AFTER ename;

ALTER TABLE dept30
MODIFY COLUMN ename VARCHAR(15);

DESC dept30;



ALTER TABLE employ
MODIFY COLUMN last_name VARCHAR(50);

DESC employ;

ALTER TABLE employ
DROP COLUMN first_name;




ALTER TABLE dept30
CHANGE COLUMN sal salary INT(11);

DESC dept30;

RENAME TABLE dept30 TO dept40;

SHOW TABLES;

RENAME TABLE dept40 TO dept30;

ALTER TABLE dept30
COMMENT '부서번호 30번 사원 정보테이블';

ALTER TABLE dept30
MODIFY COLUMN ename VARCHAR(15) COMMENT  '사원의 이름';

DROP TABLE department;


CREATE TABLE department
AS
SELECT * FROM dept
WHERE 0 > 1;

ALTER TABLE department
ADD COLUMN hiredate DATETIME default CURRENT_TIMESTAMP;

desc department;



INSERT INTO department(deptno, hiredate)
VALUES (10,DEFAULT);

SELECT * FROM department;


CREATE TABLE student
(
	hakbun CHAR(6) ,
	irum VARCHAR(20),
	CONSTRAINT student_hakbun_pk PRIMARY KEY(hakbun)
) DEFAULT CHARACTER SET = utf8;

SELECT * FROM information_schema.table_constraints
WHERE TABLE_NAME = 'student';


CREATE TABLE dept_clone
AS
SELECT * FROM dept
WHERE 1 = 0 ;

DESC dept_clone;

ALTER TABLE dept_clone
ADD CONSTRAINT dept_clone_deptno_pk PRIMARY KEY(deptno);

CREATE TABLE emp_clone
AS
SELECT * FROM emp
WHERE 1=0;

DESC emp_clone;

ALTER TABLE emp_clone
ADD PRIMARY KEY(empno);

ALTER TABLE emp_clone
ADD constraint emp_clone_deptno_fk FOREIGN KEY(deptno) REFERENCES dept_clone(deptno);

CREATE TABLE unitest
(
	deptno SMALLINT UNIQUE,
	dname CHAR(14),
	loc CHAR(13), CONSTRAINT unitest_deptno_uk UNIQUE(deptno)
);

DROP TABLE unitest;

INSERT INTO unitest VALUE(10,'Design','Seoul');
INSERT INTO unitest VALUE(null,'Developoment','Busan');


SELECT * FROM unitest;
DESC unitest;

CREATE TABLE dept_copy1
(
deptno SMALLINT,
dname VARCHAR(30) NOT NULL DEFAULT 'Accounting',
loc VARCHAR(20),
PRIMARY KEY(deptno),	
UNIQUE(loc)
);


INSERT INTO dept_copy1(deptno, loc)
VALUES(20,'busan');


CREATE  TABLE  dept_copy1
(
deptno   SMALLINT,
dname   VARCHAR(20)  NOT  NULL     DEFAULT     'Accounting',
loc      VARCHAR(20),
PRIMARY  KEY(deptno),
UNIQUE(loc)
);

DROP TABLE dept_copy1;













