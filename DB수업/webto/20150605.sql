select * from empcopy;

-- 9999, 박사장, 사장, null, 20000101, 2000, 0, 10
insert into empcopy
(empno, ename, job, hiredate, sal, comm, deptno)
values
(9999, '박사장', '사장', to_date('20000101'), 2000, 0, 10);

insert into empcopy
(empno, ename, job, mgr, hiredate, sal, comm, deptno)
values
(1111, '김갑수', '사원', 9999, to_date('20150101'), 200, 0, 10);

insert into empcopy
(empno, ename, job, mgr, hiredate, sal, comm, deptno)
values
(8888, '홍길동', '대장', 9999, to_date('20150605'), 200, 0, 10);

-- 테이블 만들기 1
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
, doubledata number(9,2) -- 전체가 9자리인데 소숫자리가 2자리
, chardata char(1)-- 문자열 영문은 1byte, 한글 한 자를 표현하려면 3byte 사용.
, varchar2data varchar2(10)
, datadata date
);

select * from testdata; 

insert into testdata
(intdata,doubledata,chardata,varchar2data,datadata)
values
(1234567, 12345.67, 'N', '1234567890', to_date('20150605'));


alter table testdata -- rename
rename column datadata  to datedata; -- rename column 이전속성이름 to 새이름

alter table testdata
add (testtest varchar2(5)); -- add (속성이름 dataType(5))

alter table testdata
modify (testtest number(9,0));

alter table testdata -- 
drop column testtest; -- column 지우기


truncate table testdata;

drop table testdata; -- drop table 삭제할 테이블명

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
('webto', '12345', '엄윤길', '01012341234', '서울특별시 강남구', 'VIP', 123421, 20150605);

insert into custom
(id, pass, cname, cusphn, cusaddress, cuslevel, cusmil, YYYYMMDD)
values
('hong', '54321', '홍길동', '01065457898', '서울특별시 관악구', 'gold', 1000, 20150604);


insert into emp
(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values
(1111, '김갑수', '사원', 9999, null, 200, null, 10);

insert into emp
(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values
(2222, '사원', '김을수', 9999, null, 200, null, 10);

insert into emp -- 속성이 생략 되어 있을 때 모든 속성을 입력 해야만 가능 함.
values
(3333, '김태희', '영업', 9999, null, 180, 100, 30);

insert into emp
(EMPNO, ENAME, JOB, MGR, SAL, COMM, DEPTNO)-- 속성의 입력 순서와
values
(7777, '칠칠이', '회장', 9999, 200, null, 10);-- 입력할 데이터 값의 순서가 같아야 함.

insert into emp
(EMPNO, ENAME, JOB, MGR, SAL, COMM, DEPTNO)
values
(7777, '****', '@@@@@', 9999, 010-1231-3344, null, 10);


--update 테이블명 set 속성이름 = 값
--where  속성이름 연산자 값 ; 

select * from emp
where job in ('김을수'); 

select * from emp
where empno=2222;

select * from emp;
update emp set ename='김을수', job='사원', sal=0, hiredate=to_date('20150605')
where empno=2222; --- where 절을 이용해서 수정하고자하는 데이터 열을 선택하게 된다 그렇게 때문에 where 절 선택시 신중해야 할 것.


--Delete 
--
--- 테이블 데이터를 삭제하고자 할때.
--
--- where절을 이용해서 삭제하고자하는 데이터을 선택해야 한다.
--delete from 테이블명

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
