SELECT ename FROM emp
WHERE job IN('ANALYST','CLERK');

SELECT * FROM dept
WHERE (deptno, loc) IN ((20,'dallars'),(

SELECT COUNT(*)
FROM zipcode

SELECT *
FROM zipcode
WHERE dong LIKE '역삼_동';

SELECT ename
FROM emp
WHERE ename LIKE 'J%';

SELECT job
FROM emp
WHERE job LIKE 'A%';

SELECT ename, empno, hiredate
FROM emp
WHERE hiredate LIKE '1982%';

SELECT empno,ename
FROM emp
WHERE ename LIKE '%$_TEST' ESCAPE '$';

SELECT *
FROM emp
WHERE comm IS NULL;

SELECT *
FROM emp
ORDER BY sal DESC;

SELECT:  
FROM Emp
WHERE dptno = 20;

SELECT *
FROM emp
ORDER BY deptno DESC, sal ASC;

SELECT ename,sal * 12 + IFNULL(comm,0) AS "Annual Salary"
FROM emp
ORDER BY "Annual Salary" DESC;

SELECT *
FROM emp 
ORDER BY sal;

SELECT IF(comm, comm,'No Commission')
FROM emp;

SELECT job, sal,
	CASE WHEN job = 'ANALYST' THEN sal *1.1
		  WHEN job = 'CLERK' THEN sal * 1.15
		  WHEN job = 'MANAGER' THEN sal * 1.2
		  ELSE sal
	END AS "SALARY"
FROM emp;

SELECT ename, deptno, ROUND(sal), 
	CASE WHEN deptno = 10 THEN sal * 0.1
		  WHEN deptno = 20 THEN sal * 0.15
		  WHEN deptno = 30 THEN sal * 0.2
		  ELSE 0
	END AS "BONUS"
FROM emp; 

SELECT FLOOR(RAND() * 6 +1);                                                                                                                                         
SELECT SIGN(1);
