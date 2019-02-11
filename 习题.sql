
select deptno, "T".avg_sal, GRADE
	from (
		select deptno, AVG(sal) as "avg_sal"
			from emp
			group by deptno
		) "T"
	join SALGRADE "S"
	on "T".avg_sal between "S".LOSAL and "S".HISAL
	
select deptno, avg_sal,GRADE 
	from SALGRADE "S"
	join (
			select deptno, AVG(sal) as "avg_sal"
				from emp
				group by deptno
	) "T"
	on avg_sal between LOSAL and HISAL 
	
select deptno, avg_sal, GRADE
	from SALGRADE, (
				select deptno, AVG(sal) as "avg_sal"
					from emp
					group by deptno
	) "T"
	where avg_sal between LOSAL and HISAL

select "T".deptno, "D".dname, avg_sal, GRADE
	from (
			select deptno, AVG(sal) as "avg_sal"
				from emp "E"
				group by deptno
	) "T"
	join SALGRADE "S"
	on avg_sal between LOSAL and HISAL
	join dept "D"
	on "D".deptno = "T".deptno
	
--要明白此处不分组是无法运行的,deptno有14个值，而avg(sal)在默认情况下
--只有一个值，所以必须找到一个合适的分组

select deptno--, AVG(sal) as "avg_sal"
	from emp
--	group by deptno

select AVG(sal)
	from emp
	
select * from emp
	where EMPNO in (select mgr from emp)

--纯自我猜测，但结果正确
--这样理解：没有领导被认为领导是null，所以直接查询时查不到结果	
select * from emp
	where EMPNO not in (select ISNULL(mgr,0) from emp)
	
select deptno, AVG(sal)
	from emp
	group by deptno
	order by AVG(sal) desc

select top 3 ename, sal, dept.deptno, dept.dname, GRADE 
	from emp 
	join dept
	on emp.deptno = dept.deptno
	join SALGRADE
	on emp.sal between LOSAL and HISAL
	where sal not in(
					select top 1 sal
						from emp
						order by sal
	) 
	order by sal

--where对没有分组的记录进行过滤，having对分组后的数据进行过滤	
select  emp.deptno, dname, GRADE
	from emp
	join dept
	on dept.deptno = emp.deptno
	join SALGRADE
	on sal between LOSAL and HISAL
	where sal > 1500
	group by emp.deptno, dname, GRADE
	having AVG(sal) >2000
	order by AVG(sal) desc