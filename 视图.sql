create view v$
	as 
		select sal, emp.deptno
			from emp
			join dept 
			on emp.deptno = dept.deptno 
			
select * from v$	

create view v$_2
	as 
		select AVG(sal) "avg_sal" from emp 