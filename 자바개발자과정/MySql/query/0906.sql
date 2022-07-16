CREATE TABLE dept_copy
AS
SELECT * FROM dept;

CREATE TABLE emp_copy
AS
SELECT * FROM emp;

ALTER TABLE dept_copy
ADD PRIMARY KEY(deptno);

ALTER TABLE emp_copy
ADD PRIMARY KEY(empno);

ALTER TABLE emp_copy
ADD CONSTRAINT emp_copy_deptno_fk FOREIGN KEY(deptno)
REFERENCES dept(deptno);

SELECT * FROM information_schema.table_constraints
WHERE TABLE_NAME = 'emp_copy';

CREATE TABLE Student
(
	hakbun CHAR(6),
	irum VARCHAR(20),
	kor TINYINT,
	eng TINYINT,
	mat TINYINT,
	tot smallint,
	average DECIMAL(5,2),
	grade CHAR(1)
)DEFAULT CHARACTER SET = UTF8;

ALTER TABLE Student
ADD PRIMARY KEY(hakbun);

ALTER TABLE Student
ADD CONSTRAINT student_irum_uk UNIQUE KEY(irum);

-- not null  column의 제약조건  not table --
ALTER TABLE Student
MODIFY COLUMN irum VARCHAR(20) NOT NULL;

ALTER TABLE Student
MODIFY COLUMN kor TINYINT NOT NULL;

ALTER TABLE Student
MODIFY COLUMN eng TINYINT NOT NULL;

ALTER TABLE Student
MODIFY COLUMN mat TINYINT NOT NULL;

ALTER TABLE Student
ADD CHECK(kor BETWEEN 0 AND 100);

ALTER TABLE Student
ADD CHECK(eng BETWEEN 0 AND 100);

ALTER TABLE Student
ADD CHECK(mat BETWEEN 0 AND 100);



SELECT * FROM information_schema.table_constraints
WHERE TABLE_NAME = 'Student';

delimiter $$
CREATE PROCEDURE helloworld()
BEGIN
	DECLARE str VARCHAR(30);
	SET str = 'Hello, world';
	
	SELECT str;
	
END
$$
delimiter;

CALL helloworld();
DROP PROCEDURE helloworld;


CALL sungjukmgmt();

DELIMITER //
CREATE PROCEDURE sungjukmgmt()
BEGIN
	DECLARE hakbun CHAR(6);
	DECLARE irum VARCHAR(20);
	DECLARE kor, eng, mat, tot INT DEFAULT 0;
	DECLARE average DECIMAL(5,2) DEFAULT 0.00;
	DECLARE grade CHAR(1) DEFAULT 'F';
	DECLARE str VARCHAR(500);
	
	SET hakbun = '20-001'; 
	SET irum = '백두산';
	SET kor = 78, eng = 89, mat = 99;
	SET tot = kor + eng + mat;
	SET average = tot / 3;
	
	/*
	if average >= 90 then
		SET grade = 'A';
	ELSEIF average >= 80 then
		SET grade = 'B';
	ELSEIF average >= 70	then
		SET grade = 'C';
	ELSEIF average >= 60 then
		SET grade = 'D';
	ELSE 
		SET grade = 'F';
	END if;*/
	
	case
		when average >= 90 then SET grade = 'A';
		when average >= 80 then SET grade = 'B';
		when average >= 70 then SET grade = 'C';
		when average >= 60 then SET grade = 'D';
		ELSE SET grade = 'F';
	END case;
	
	SET str = CONCAT('학번 ==> ', hakbun, CHAR(10));
	SET str = CONCAT(str, '이름 ==> ', irum, CHAR(10));
	SET str = CONCAT(str, '국어 ==> ', kor, CHAR(10));
	SET str = CONCAT(str, '영어 ==> ', eng, CHAR(10));
	SET str = CONCAT(str, '수학 ==> ', mat, CHAR(10));
	SET str = CONCAT(str, '총점 ==> ', tot, CHAR(10));
	SET str = CONCAT(str, '평균 ==> ', average, CHAR(10));
	SET str = CONCAT(str, '평점 ==> ', grade);
	
	SELECT str;
END
//
DELIMITER;

DROP procedure sungjukmgmt;


delimiter //
CREATE PROCEDURE sp_sum()
BEGIN
	DECLARE i, result INT DEFAULT 0;
	SET i = 1;
	
	while i<101 DO
		SET result = result + i;
		SET i = i + 1;
	
	END while;
	
END 
//
delimiter ;

CALL sp_sum();

DROP PROCEDURE sp_sum;



delimiter //
CREATE PROCEDURE test_proc()
BEGIN
	DECLARE str VARCHAR(100);
	SET str = CONCAT('My name is ', '백두산');
	SELECT str;
END //

delimiter ;

DROP procedure test_proc;

CALL test_proc;


-- emp_copy 테이블의 모든 데이터를 삭제하는 프로시저

delimiter //
CREATE PROCEDURE sp_del_all()
BEGIN
	DELETE FROM emp_copy;
	COMMIT;
END //
delimiter ;

DROP PROCEDURE sp_del_all;

CALL sp_del_all();
SELECT * FROM emp_copy;

DESC information_schema.routines;

SELECT *
FROM information_schema.routines
WHERE specific_name = 'sp_del_all';

CALL test_proc_in('한라산');
DROP PROCEDURE test_proc_in;

delimiter //
CREATE PROCEDURE test_proc_in(in v_name VARCHAR(100))
BEGIN
	SELECT CONCAT('My name is ', v_name);
END //
delimiter ;


DROP PROCEDURE sp_sum;

delimiter //
CREATE PROCEDURE sp_sum(in v_start INT, IN v_last int)
BEGIN
	DECLARE i, result int;
	SET i = v_start;
	SET result = 0;
	
	while i<=v_last DO
		SET result = result + i;
		SET i = i + 1;
	
	END while;
	
	SELECT CONCAT(v_start, '부터 ', v_last, '까지의 합은 ', result , ' 입니다.');
END 
//
delimiter ;

CALL sp_sum(50,100);




-- 성적관리프로그램

DELIMITER //
CREATE PROCEDURE sungjukmgmt
(
	in v_hakbun CHAR(6),
	in v_irum VARCHAR(20),
	in v_kor tinyint,
	in v_eng tinyint,
	in v_mat tinyint
)
BEGIN
	declare tot INT DEFAULT 0;
	DECLARE average DECIMAL(5,2) DEFAULT 0.00;
	DECLARE grade CHAR(1) DEFAULT 'F';
	DECLARE str VARCHAR(500);
	
	SET tot = v_kor + v_eng + v_mat;
	SET average = tot / 3;
	
	case
		when average >= 90 then SET grade = 'A';
		when average >= 80 then SET grade = 'B';
		when average >= 70 then SET grade = 'C';
		when average >= 60 then SET grade = 'D';
		ELSE SET grade = 'F';
	END case;
	
	INSERT INTO Student
	VALUES(v_hakbun, v_irum, v_kor, v_eng, v_mat, tot, average, grade); 
	COMMIT;
	
	SELECT 'Insertion Success';
	
END
//
DELIMITER ;

CALL sungjukmgmt('20-001','백두산',56,78,90);



DROP procedure emp_sal_update;

delimiter //
CREATE PROCEDURE emp_sal_update(IN v_empno SMALLINT, IN v_sal FLOAT)
BEGIN
	UPDATE emp
	SET sal = v_sal
	WHERE empno = v_empno;
	
	COMMIT;
	SELECT 'Update Success';
END //
delimiter ;


CALL emp_sal_update(7369,1000);


DROP PROCEDURE test_proc_out;

delimiter //
CREATE PROCEDURE test_proc_out(OUT v_string VARCHAR(100))
BEGIN
	DECLARE str VARCHAR(100);
	SET str = CONCAT('My name is ','백두산');
	
	SELECT str INTO v_string;
END //
delimiter ;

CALL test_proc_out(@p_string);
SELECT @p_string;


-- 사원번호 7934번의 월급과 이름은?

DROP PROCEDURE sp_emp_select;

delimiter //
CREATE PROCEDURE sp_emp_select(IN v_empno SMALLINT(4),OUT v_sal FLOAT(5,2), OUT v_ename VARCHAR(10))
BEGIN
	SELECT sal, ename INTO v_sal, v_ename
	FROM emp 
	WHERE empno=v_empno;
END //
delimiter ;

CALL sp_emp_select(7934, @v_sal,@v_ename);
SELECT @v_sal AS '월급', @v_ename AS '이름';


delimiter //
CREATE PROCEDURE test_proc_inout(INOUT v_str VARCHAR(100))
BEGIN
	DECLARE str VARCHAR(100);
	SET str = 'My name is ';
	
	SELECT CONCAT(str, v_str) INTO v_str; 
END //
delimiter ;

SET @t_str = '한강';
CALL test_proc_inout(@t_str);
SELECT @t_str;

CREATE OR REPLACE VIEW vu_emp1982
AS
SELECT empno, ename, hiredate
FROM emp
-- where hiredate >= '1982-01-01' and hiredate <= '1982-12-31';
-- WHERE hiredate BETWEEN '1982-01-01' AND '1982-12-31';
-- WHERE hiredate LIKE '1982%';
-- WHERE SUBSTRING(hiredate,1,4)='1982';
-- WHERE INSTR(hiredate, '1982') > 0 ;
WHERE YEAR(hiredate) = 1982 ;


SELECT * FROM vu_emp1982;


-- 사원번호, 사원이름, 봉급, 부서이름, 부서위치, 부서번호, 20번 부서만

CREATE OR REPLACE VIEW vu_emp_dept_select
AS
SELECT empno, ename, sal, dname, loc, emp.deptno
-- FROM emp NATURAL JOIN dept
-- FROM emp INNER JOIN dept on emp.deptno = dept.deptno
FROM emp INNER JOIN dept USING(deptno)
WHERE emp.deptno=20;

SELECT * FROM vu_emp_dept_select;


DROP VIEW emp_20;

CREATE OR REPLACE VIEW emp_20
AS
SELECT * FROM emp
WHERE deptno = 20
WITH CHECK OPTION;

UPDATE emp_20
SET deptno = 30
WHERE deptno = 20;

SELECT * FROM emp_20;

SELECT ename, hiredate 
FROM emp
ORDER BY hiredate desc
LIMIT 5;

SELECT	empno, ename, sal * 12 + IFNULL(comm,0) AS "Annual Salary"
FROM	emp
ORDER BY sal * 12 + IFNULL(comm,0) DESC
LIMIT 5;

SELECT empno, ename, hiredate
FROM emp
WHERE hiredate 
ORDER BY hiredate DESC
LIMIT 5;

SELECT empno, ename, sal, hiredate
FROM emp
-- WHERE hiredate BETWEEN '1982-01-01' AND '1982-12-31';
-- WHERE hiredate LIKE '1982%' ;
WHERE YEAR(hiredate) = 1982;

SELECT ename, job
FROM emp
WHERE  job = (SELECT job FROM emp WHERE empno = 7369);

CREATE TABLE dept1
AS
SELECT deptno, dname
FROM dept;

CREATE TABLE emp1
AS
SELECT empno, ename, job, deptno
FROM emp;

ALTER TABLE dept1
ADD PRIMARY KEY(deptno);

ALTER TABLE emp1
ADD PRIMARY KEY(empno);

ALTER TABLE emp1
ADD FOREIGN KEY(deptno) REFERENCES dept1(deptno);

SELECT empno, ename, job, deptno, sal
FROM emp
GROUP BY deptno
ORDER BY deptno ASC, sal DESC;

ALTER TABLE dept1
CHANGE dname DEVELOPMENT VARCHAR(14)
WHERE deptno = 20;

UPDATE dept1
SET dname = 'DEVELOPMENT'
WHERE deptno = 20;

SELECT empno, ename, job, deptno, sal
FROM emp
ORDER BY deptno, sal DESC;

SELECT job, sum(sal)
FROM emp
WHERE job NOT IN ('salesman')
GROUP BY deptno
HAVING SUM(sal) > 5000
ORDER BY sum(sal) DESC;