select deptno, job, avg(sal)
	from emp
	group by deptno, job	-- deptno job ������ȱ����Ϊ����Ҫ��ѯ��֮һ����job������Ҫʹjob��Ϊ���鹲�е�����
	order by deptno