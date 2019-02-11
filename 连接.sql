select * from emp, dept
select * from emp, dept
	where empno = 7369

select *
	from emp "E", dept "D", salgrade "S"
	where "E".deptno = "D".deptno and "E".sal >= "S".LOSAL and "E".sal <= "S".HISAL and "E".sal > 2000
	
select *
	from emp "E"
	join dept "D"
	on "E".deptno = "D".deptno
	join SALGRADE "S"
	on "E".sal >= "S".LOSAL and "E".sal <= "S".HISAL
	where "E".sal >2000