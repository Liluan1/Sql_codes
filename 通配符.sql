select * from emp;
select * from emp where ename like '%A%';
select * from emp where ename like 'A%';
select * from emp where ename like '_A%';
select * from emp where ename like '[A-F]%';
select * from emp where ename like '[A,F]%';
select * from emp where ename like '[^A-F]%';