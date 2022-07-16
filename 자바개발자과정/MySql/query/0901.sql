SELECT deptno, ename, hiredate, NOW(),
		DATEDIFF(NOW(),hiredate),
		FLOOR(DATEDIFF(NOW(),hiredate) / 365) AS year,
		FLOOR(DATEDIFF(NOW(),hiredate) / 30) AS month,
		FLOOR(DATEDIFF(NOW(),hiredate) / 7) AS week
FROM emp
WHERE deptno = 10;

SELECT ename, hiredate, ADDDATE(hiredate,INTERVAL 90 DAY), sal
FROM emp
WHERE deptno=30;

SELECT DATEDIFF(LAST_DAY(NOW()),NOW());

SELECT char_LENGTH('abc');

SELECT FORMAT(2502424.342324,4);

SELECT SUBSTRING('foobarbar' FROM 4);

SELECT ename, hiredate
FROM	emp
WHERE INSTR(hiredate,'1982') !=0;
-- WHERE SUBSTRING(hiredate,1,4)='1982';
-- WHERE YEAR(hiredate) = 1982;
-- between and
-- <= >=
-- like '1982%

SELECT DATABASE();

SELECT USER();

SELECT VERSION();

SELECT COUNT(DISTINCT job)
FROM emp;

SELECT AVG(SAL)
FROM emp;

SELECT deptno,sum(sal)
FROM emp
GROUP BY deptno;

SELECT max(hiredate)
FROM emp;

SELECT deptno, sum(sal), sum(IFNULL(sal,0))
FROM emp
GROUP BY deptno;

SELECT job, deptno, COUNT(*)
FROM emp
GROUP BY job,deptno;

SELECT YEAR(hiredate) AS "입사년도", COUNT(*) AS "합계"
FROM emp
GROUP BY YEAR(hiredate)
ORDER BY YEAR(hiredate) DESC;

SELECT deptno, job, COUNT(*),AVG(sal),SUM(sal)
FROM emp
GROUP BY deptno,job
ORDER BY deptno ASC, job DESC;

SELECT deptno, COUNT(*), SUM(sal)
FROM emp
GROUP BY deptno
HAVING COUNT(*) >=4;

SELECT job, AVG(sal),SUM(sal)
FROM emp
GROUP BY job
HAVING AVG(sal)>=3000;

SELECT  job, deptno, SUM(sal)
FROM  emp
GROUP  BY  job, deptno
WITH  ROLLUP;

SELECT job, SUM(sal)
FROM emp
WHERE job <> 'salesman'
GROUP BY job
HAVING sum(sal) > 5000
ORDER BY SUM(sal) DESC;
