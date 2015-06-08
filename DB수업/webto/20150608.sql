--emp와 dept를 연결하여 사원 정보 뒤에 부서정보를 출력하시어.
select * from emp;
select e1.empno, e1.ename, e2.dname
from emp e1, dept e2
where e1.empno is not null
and e1.deptno = e2.deptno
order by e1.empno;



select e1.empno, e1.ename, e1.mgr, e2.ename  mgrname 
from emp e1, emp e2
where e1.mgr is not null
and e1.mgr = e2.empno
order by e1.empno;
-- 동등조인 예시

select empno, ename, job, emp.deptno, dname, loc
from emp, dept
where emp.deptno = dept.deptno
order by dept.deptno;

select empono, ename, job, e.deptno, dname, loc
from emp e, dept
order by deptno;

select * from emp;
select * from dept;

select empono, ename, job, deptno
from emp
order by deptno;

commit;

insert into customer
values(33333,'234543',' 홍순자',01045672345,'서울 강남구 서초',300,12345);

insert into customer
values(11111,'674657',' 홍순철',01009834343,'서울 강남구 학동',100,12345);

commit;
select * from customer;
show autocommit;

rollback;

transaction
--user와 DAMS 간의 상호작용
--user의 명령과 이를 수행,적용,완료메세지전달의 과정 전체
--transaction 모드에는 autocommit on / autocommit off의 두가지 모드 존재
--autocommit on은 user의 명령을 즉시 적용하는 것
--autocommit off는 user의 명령 수행 후 적용 여부를 다시 묻는 것
--autocommit off 모드에서의 적용 명령은 commit
--autocommit off 모드에서의 적용 취소 명령은 rollback
--show transaction : 현재의 transaction 모드를 



delete from CUSTOMER
--where CNAME = '홍길순';
where cid = 11111;
select * from customer;

delete from 테이블이름
where 삭제대상을구별할수있는속성이름 = 값;

-- 주의!!!반드시 where절과 함께 사용
-- 삭제하려는 data만을 삭제할 수 있도록  where절 사용 필요
-- where절과 함께 사용하지 않으면 엉뚱한 데이터 값이 변경됨
-- update 실행전에 select 사용하여 where절 검증 필요

update CUSTOMER set caddr = '중국';


update 테이블 이름 set 수정할 속성이름 = 수정할값
where 수정대상을 구별할수있는 속성이름 = 값;

-- 주의!!!반드시 where절과 함께 사용
-- 수정하려는 data만을 수정할 수 있도록  where절 사용 필요
-- where절과 함께 사용하지 않으면 엉뚱한 데이터 값이 변경됨
-- update 실행전에 select 사용하여 where절 검증 필요

insert into 테이블이름 (속성이름, 속성이름, 속성이름...)
values(값, 값, 값,....);

-- 속성이름 - 테이블의 값을 입력할 송성이름
-- 주의 - 입력할 속성 이름과 값의 위치를 맞춰야 함!!!!
-- 테이블 이름 뒤에 속성 이름 리스트를 생략하는 경우는 values 뒤에 모든 값을 넣는 경우만 가능


insert into CUSTOMER
values(22222,'234543',' 홍길순',01045672345,'서울 강남구 양재',200,10000);

create table CUSTOMER
(CID number(5,0)
, CPWD varchar2(15)
, CNAME varchar2(12)
, CTEL number(11,0)
, CADDR varchar2(100)
, CGRADE number(9,0)
, CMILEAGE number(9,0)
);
