select COUNT(*) from emp;
select MAX(sal) from emp;
select MIN(ISNULL(comm,-1))from emp;
select COUNT(distinct deptno) from emp;
--单行函数不能和多行函数放在一起
