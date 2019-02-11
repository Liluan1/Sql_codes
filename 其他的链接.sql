select *
	from emp
	left join dept
	on emp.deptno = dept.deptno
	
select *
	from emp
	right join dept
	on emp.deptno = dept.deptno
	
select *
	from emp
	full join dept
	on emp.deptno = dept.deptno
	
select *
	from emp
	cross join dept
--	on emp.deptno = dept.deptno

select *
	from emp "E1"
	join emp "E2"
	on E1.deptno = E2.deptno
	