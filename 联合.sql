select E1.ename, E1.sal, E1.mgr 
	from emp "E1"
	join emp "E2"
	on E1.mgr = E2.EMPNO
union 
	select ename, sal, mgr from emp where mgr is null
	--null 不能用 “=” 来判断