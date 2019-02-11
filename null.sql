select * from emp where comm is null
select * from emp where comm is not null

select ename, sal*12+ISNULL(comm,0) as "ÄêÐ½" from emp;
