select * from empcopy;

-- 9999, �ڻ���, ����, null, 20000101, 2000, 0, 10
insert into empcopy
(empno, ename, job, hiredate, sal, comm, deptno)
values
(9999, '�ڻ���', '����', to_date('20000101'), 2000, 0, 10);

insert into empcopy
(empno, ename, job, mgr, hiredate, sal, comm, deptno)
values
(1111, '�谩��', '���', 9999, to_date('20150101'), 200, 0, 10);

insert into empcopy
(empno, ename, job, mgr, hiredate, sal, comm, deptno)
values
(8888, 'ȫ�浿', '����', 9999, to_date('20150605'), 200, 0, 10);

-- ���̺� ����� 1
create table empcopy
(empno number(5,0)
, ename varchar2(15)
, job varchar2(30)
, mgr number(5,0)
, hiredate date
, sal number(9,0)
, comm number(9,0)
, deptno number(4,0)
);


create table testdata
(intdata number(7,0)
, doubledata number(9,2) -- ��ü�� 9�ڸ��ε� �Ҽ��ڸ��� 2�ڸ�
, chardata char(1)-- ���ڿ� ������ 1byte, �ѱ� �� �ڸ� ǥ���Ϸ��� 3byte ���.
, varchar2data varchar2(10)
, datadata date
);

select * from testdata; 

insert into testdata
(intdata,doubledata,chardata,varchar2data,datadata)
values
(1234567, 12345.67, 'N', '1234567890', to_date('20150605'));


alter table testdata -- rename
rename column datadata  to datedata; -- rename column �����Ӽ��̸� to ���̸�

alter table testdata
add (testtest varchar2(5)); -- add (�Ӽ��̸� dataType(5))

alter table testdata
modify (testtest number(9,0));

alter table testdata -- 
drop column testtest; -- column �����


truncate table testdata;

drop table testdata; -- drop table ������ ���̺��

truncate table empcopy;



create table custom
(id char(15)
, pass varchar2(15)
, cname char(12)
, cusphn varchar2(14)
, cusaddress varchar2(100)
, cuslevel char(10)
, cusmil number(10,0)
);

alter table custom
add (YYYYMMDD number(8));

insert into custom
(id, pass, cname, cusphn, cusaddress, cuslevel, cusmil, YYYYMMDD)
values
('webto', '12345', '������', '01012341234', '����Ư���� ������', 'VIP', 123421, 20150605);

insert into custom
(id, pass, cname, cusphn, cusaddress, cuslevel, cusmil, YYYYMMDD)
values
('hong', '54321', 'ȫ�浿', '01065457898', '����Ư���� ���Ǳ�', 'gold', 1000, 20150604);


insert into emp
(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values
(1111, '�谩��', '���', 9999, null, 200, null, 10);

insert into emp
(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values
(2222, '���', '������', 9999, null, 200, null, 10);

insert into emp -- �Ӽ��� ���� �Ǿ� ���� �� ��� �Ӽ��� �Է� �ؾ߸� ���� ��.
values
(3333, '������', '����', 9999, null, 180, 100, 30);

insert into emp
(EMPNO, ENAME, JOB, MGR, SAL, COMM, DEPTNO)-- �Ӽ��� �Է� ������
values
(7777, 'ĥĥ��', 'ȸ��', 9999, 200, null, 10);-- �Է��� ������ ���� ������ ���ƾ� ��.

insert into emp
(EMPNO, ENAME, JOB, MGR, SAL, COMM, DEPTNO)
values
(7777, '****', '@@@@@', 9999, 010-1231-3344, null, 10);


--update ���̺�� set �Ӽ��̸� = ��
--where  �Ӽ��̸� ������ �� ; 

select * from emp
where job in ('������'); 

select * from emp
where empno=2222;

select * from emp;
update emp set ename='������', job='���', sal=0, hiredate=to_date('20150605')
where empno=2222; --- where ���� �̿��ؼ� �����ϰ����ϴ� ������ ���� �����ϰ� �ȴ� �׷��� ������ where �� ���ý� �����ؾ� �� ��.


--Delete 
--
--- ���̺� �����͸� �����ϰ��� �Ҷ�.
--
--- where���� �̿��ؼ� �����ϰ����ϴ� �������� �����ؾ� �Ѵ�.
--delete from ���̺��

--select * from emp
delete from emp
where empno=7777;

show autocommit;
rollback;

set autocommit off;
delete from emp;
rollback;
select * from emp;

delete from emp
where empno=2222;
rollback;
