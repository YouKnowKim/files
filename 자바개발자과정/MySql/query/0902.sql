SELECT job, deptno, SUM(sal)
FROM emp
GROUP BY job, deptno
WITH ROLLUP;

SELECT empno, ename, dname, loc
FROM emp ,dept;

SELECT empno, ename, dname, loc
FROM emp, dept
WHERE emp.deptno = dept.DEPTNO AND
		ename = 'SMITH';
		
		
SELECT empno, ename, dname, loc
FROM emp join dept USING(deptno)
WHERE ename = 'SMITH';

SELECT empno, ename, dname, loc
FROM emp NATURAL JOIN dept
WHERE ename = 'SMITH';

SELECT empno, ename, dname, loc
FROM emp JOIN dept
ON emp.DEPTNO=dept.deptno
WHERE ename = 'SMITH';

SELECT empno, ename, dname, loc, emp.deptno
FROM emp JOIN dept
ON emp.deptno = dept.deptno
WHERE ename = 'SMITH';

SELECT ename, dname
FROM emp JOIN dept
ON emp.deptno=dept.deptno
WHERE ename LIKE '%A%';

SELECT ename, dname
FROM emp natural JOIN dept
WHERE ename LIKE '%A%';

SELECT ename, dname
FROM emp JOIN dept USING(deptno)
WHERE ename LIKE '%A%';

SELECT CONCAT(ename,'의 근무부서는 ',dname,'이고, 근무지는 ',loc,'입니다.')
FROM emp e JOIN dept d 
ON e.deptno = d.deptno
WHERE job LIKE 'c%';

SELECT CONCAT(ename,'의 근무부서는 ',dname,'이고, 근무지는 ',loc,'입니다.')
FROM emp natural JOIN dept 
WHERE job LIKE 'c%';

SELECT CONCAT(ename,'의 근무부서는 ',dname,'이고, 근무지는 ',loc,'입니다.')
FROM emp JOIN dept USING(deptno)
WHERE job LIKE 'c%';



SELECT c1.Name, c1.population, c2.NAME, continent
FROM city c1 JOIN country c2
ON (c1.countrycode = c2.code)
WHERE c1.CountryCode = 'KOR';

SELECT c1.Name, c1.population, c2.NAME, continent,c3.language
FROM city c1 JOIN country c2  ON (c1.countrycode = c2.code) 
		JOIN countrylanguage c3 ON(c2.Code=c3.CountryCode)
WHERE c1.CountryCode = 'KOR' AND c3.isofficial = 'T';



SELECT  empno, ename, sal,dname, loc, grade
FROM emp, dept, salgrade 
WHERE (emp.deptno=dept.deptno) AND (sal BETWEEN losal AND hisal);

SELECT e.ename, e.deptno, d.dname
FROM emp e left OUTER JOIN dept d
ON e.deptno = d.deptno;




INSERT INTO emp1(empno,ename,sal,job,deptno)
VALUES(8282,'JACK',3000,'ANALYST',50);

SELECT e.ename, e.deptno, d.dname
FROM emp1 e left outer JOIN dept d
ON e.deptno = d.deptno;

-- BLAKE의 관리자의 이름
SELECT mgr
FROM emp
WHERE ename = 'BLAKE'; -- 7839

SELECT ename
FROM emp
WHERE empno = 7839; -- king

SELECT employee.empno, employee.ename, manager.ENAME AS "관리자의 이름"
FROM emp employee, emp manager
WHERE employee.mgr = manager.empno;

SELECT employee.ENAME, employee.hiredate, manager.ename, manager.hiredate
FROM emp employee, emp manager
WHERE employee.mgr = manager.empno AND (employee.hiredate < manager.hiredate);

SELECT job, deptno
FROM emp
WHERE sal >= 3000

UNION ALL

SELECT job, deptno
FROM emp
WHERE deptno = 10;

SELECT sal, ename
FROM emp
WHERE sal > (SELECT sal 
			 	 FROM emp 
				 WHERE empno = 7566)
ORDER BY sal;

SELECT ename, job
FROM emp
WHERE job = (SELECT job
				 FROM emp
				 WHERE empno = 7369);

SELECT empno, ename,job
FROM emp
WHERE sal < ANY(SELECT sal
					 FROM emp
					 WHERE job = 'clerk')
AND job <> 'clerk';

SELECT empno, ename, job
FROM emp
WHERE sal > ALL (SELECT AVG(sal) FROM emp GROUP BY deptno); 

SELECT a.ename, a.sal, a.deptno,b.salavg
FROM emp a ,(SELECT deptno, AVG(sal) salavg FROM emp GROUP BY deptno) b
WHERE a.deptno = b.deptno
AND a.sal>b.salavg;

INSERT INTO dept_copy 
VALUES (10, 'Design', 'Seoul');

SELECT * FROM dept_copy;

INSERT INTO dept_copy(loc,deptno,dname)
VALUES ('Pusan',20, 'Marketing');

INSERT INTO dept_copy(deptno, dname)
VALUES (30,'Dvelopment');

INSERT INTO dept_copy
VALUES (40, NULL, 'Incheon');

CREATE TABLE emp_copy
AS
SELECT * FROM emp
WHERE 1 = 0;

SELECT * FROM emp_copy;

INSERT INTO emp_copy(empno, ename, hiredate)
VALUES (1111, 'Sujan', DATE(NOW()));

INSERT INTO emp_copy
VALUES (8888, '홍길동', '', NULL, CURDATE(),4000,NULL,20)

INSERT INTO emp_copy(empno, ename, hiredate, deptno)
VALUES(7777,'백두산',CURDATE(),40);

INSERT INTO emp_copy(empno, ename, hiredate, deptno)
VALUES(6666,'한라산',STR_TO_DATE('20080501','%Y%m%d'),30);

DESC student;

INSERT INTO student(hakbun, irum, kor, eng, mat)
VALUES('20-001',"백두산",78,89,90);

INSERT INTO student(hakbun, irum, kor, eng, mat)
VALUES('20-002',"한라산",100, 90, 80);

INSERT INTO student(hakbun, irum, kor, eng, mat)
VALUES('20-003',"북악산", 77, 88, 99);

UPDATE student
SET tot = (78+89+90), average = ROUND((78+89+90)/3,2)
WHERE hakbun='20-001';

UPDATE student
SET tot = (100+90+80), average = ROUND((100+90+80)/3,2)
WHERE hakbun='20-002';

UPDATE student
SET tot = (77+88+99), average = ROUND((77+88+99)/3,2)
WHERE hakbun='20-003';

SELECT * FROM student
ORDER BY tot DESC;

