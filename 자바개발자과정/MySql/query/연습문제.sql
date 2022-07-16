SELECT empno, ename,hiredate
FROM emp
WHERE hiredate >= '1983-01-01';

SELECT ename,sal,comm
FROM emp
WHERE sal<comm;

SELECT empno, ename, sal, mgr
FROM emp
WHERE empno IN (7902,7566,7788);

SELECT empno, ename, mgr, deptno
FROM emp
WHERE ename IN ('FORD', 'ALLEN');

SELECT empno, ename, job, sal
FROM emp
WHERE job = 'clerk' AND sal >=1100;

SELECT ename, job, sal
FROM emp
WHERE (job = 'president' AND sal >=1500) OR job = 'salesman';

SELECT  empno,  ename,  job,  sal
FROM  emp
WHERE  job=  'PRESIDENT' AND  sal >=  2000 OR  job =  'SALESMAN';

SELECT  empno,  ename,  job,  sal
FROM  emp
WHERE  (job =  'PRESIDENT' OR  job =  'SALESMAN')  AND  sal >=  2000;

SELECT ename, sal, comm,sal+comm AS total
FROM emp
WHERE comm IS NOT NULL
ORDER BY total ASC;

SELECT ename, sal, sal * 0.13, deptno
FROM emp
WHERE deptno = 10;

SELECT ename, deptno, sal, sal * 12 + sal*1.5 AS "Annual salary"
FROM emp
WHERE deptno = 30;

SELECT ename, sal,ROUND(sal/70,0)
FROM emp
WHERE deptno =20;

SELECT ename, sal, sal * 0.9
FROM emp;

DESC dept;
SELECT * FROM dept;

SELECT ename, deptno
FROM emp
WHERE empno = 7788;

SELECT ename, sal, comm, sal + comm AS total
FROM emp
WHERE comm IS NOT NULL
ORDER BY total;

SELECT *
FROM emp
WHERE ename = "allen";

SELECT ename, deptno, sal, hiredate
FROM emp
WHERE hiredate  = '1981-09-08';

SELECT * FROM emp WHERE job != 'manager';

SELECT * FROM emp
WHERE cast(hiredate AS DATE) >= '1981-04-02';

SELECT ename, sal, deptno
FROM emp
WHERE sal >= 800;

SELECT *
FROM emp
WHERE deptno >=20;

SELECT *
FROM emp
WHERE ename < 'K%';

SELECT *
FROM emp
WHERE hiredate < '1981-12-09';

SELECT *
FROM emp
WHERE hiredate >='1982-01-01' OR hiredate <= '1980-12-31';

SELECT ename, empno, deptno
FROM emp
WHERE deptno <> 20 and deptno <> 30;

SELECT empno, ename, hiredate, deptno
FROM emp
WHERE ename LIKE 'S%';

SELECT *
FROM emp
WHERE ename LIKE 'j%S';

SELECT *
FROM emp
WHERE ename LIKE '_A%';

SELECT empno, ename, job, sal, deptno
FROM emp
WHERE SUBSTR(ename,1,1) > 'K' AND SUBSTR(ename,1,1)<'Y';

SELECT INSTR(ename,'L');
FROM emp;



