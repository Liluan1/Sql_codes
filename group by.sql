select deptno, job, avg(sal)
	from emp
	group by deptno, job	-- deptno job 都不可缺少因为我们要查询的之一就是job，所以要使job成为分组共有的性质
	order by deptno