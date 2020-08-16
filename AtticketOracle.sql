
select * from tblCoupon;

select * from tab;

select * from tbladmin;

select * from tblEmploNotice;

select * from tblEvent;

select * from tblQnA;


select count(*) from tblEmployee;


select * from tblBuseo;



        
        
--------------------------        
--직원의 정보를 볼 수 있는 뷰 
--------------------------
create view vwemployeeinfo
as
select 
    te.seq,
    te.name,
    te.jikwi,
    te.salary,
    te.ssn,
    te.tel,
    tb.name as tn,
    te.delflag
from tblEmployee te 
    inner join tblBuseo tb 
        on te.buseoSeq = tb.seq;


select * from vwemployeeinfo;

commit;
        
select * from vwemployeeinfo where name = '양덕환' or jikwi = '과장';

commit;

select a.* from (select rownum as rnum, v.* from vwShow v) a;


select a.* from 
(select rownum as rnum, v.* from vwemployeeinfo v) a 


select a.* from 
(select rownum as rnum, v.* from vwemployeeinfo v) a 
where rnum >= 1 and rnum <= 15  
and (name like null or jikwi like '대리' or salary like '대리' or ssn like '대리' or tel like '대리' or tn like '대리')
order by seq asc;




select count(*) as cnt from vwemployeeinfo 
where name like '대리' or jikwi like '대리' or salary like '대리' or ssn like '대리' or tel like '대리' or tn like '대리';


select count(*) as cnt from vwemployeeinfo

select * from tblemplonotice;



select a.* from 
(select rownum as rnum, v.* from vwemployeeinfo v  %s) a 
where rnum >= %s and rnum <= %s 
order by %s


select * from tblEmployee;


insert into tblEmployee values (employeeSeq.nextVal,'김옥녀','대리','4500000','860123-1057987','010-7894-1246',4,0);

select employeeSeq.currval from dual;

select * from tblBuseo;

commit;


select count(*) as cnt from vwemployeeinfo %s



select * from tblEmployee;

commit;

select a.* from (select rownum as rnum, v.* from vwemployeeinfo v  where (delflag = 0)) a where rnum >= 1 and rnum <= 15;


update tblEmployee set delflag = 1 where seq = 215;

select count(*) as cnt from vwemployeeinfo where 



select * from tblShow;


select * from vwemployeeinfo;

select * from tblEmployee;


    
select * from tblCoupon;    



select 
    tc.seq as cseq, --쿠폰 번호
    tc.title as ctitle,--쿠폰 이름
    tc.startdate as cstart,--쿠폰 사용 시작가능일
    tc.enddate as cend,--쿠폰 사용 마지막 일
    tc
    ts.seq as sseq,--공연 번호
    ts.seq as stitle,--공연이름
    ts.startdate as sstart,--해당공연 시작일
    ts.enddate as  send--해당공연 종료일
    
from tblCoupon tc inner join tblShow ts on tc.showseq = ts.seq;

--------------------------        
-- 쿠폰에 대한 뷰
--------------------------
create view vwcouponinfo
as
select 
    tc.seq as cseq, --쿠폰 번호
    tc.title as ctitle,--쿠폰 이름
    tc.startdate as cstart,--쿠폰 사용 시작가능일
    tc.enddate as cend,--쿠폰 사용 마지막 일
    tc.discount,--할인액
    tc.img,--쿠폰이미지
    tc.delflag,--해당 쿠폰의 삭제유무
    ts.seq as sseq,--공연번호
    ts.title as stitle--공연이름
from tblCoupon tc inner join tblShow ts on tc.showseq = ts.seq;

select * from vwcouponinfo;

select * from 

select 




select * from tblShow;



select * from tblCusCoupon;

select * from tblcoupon;


delete from tblcoupon;


ALTER SEQUENCE couponSeq INCREMENT BY -16;

SELECT couponSeq.NEXTVAL FROM DUAL;

SELECT couponSeq.CURRVAL FROM DUAL;

ALTER SEQUENCE couponSeq INCREMENT BY 1;

select * from tblCoupon;

insert into tblcoupon values(couponSeq.CURRVAL,'여름맞이 틀별 할인권1',TO_DATE('2020/06/30','yyyy/mm/dd'),TO_DATE('2020/08/31','yyyy/mm/dd'),5000,'coupon.jpg',1,0);


insert into tblcoupon values(couponSeq.nextVal,'여름맞이 틀별 할인권2',TO_DATE('2020/06/30','yyyy/mm/dd'),TO_DATE('2020/08/31','yyyy/mm/dd'),5000,'coupon.jpg',1,0);
insert into tblcoupon values(couponSeq.nextVal,'여름맞이 틀별 할인권3',TO_DATE('2020/06/30','yyyy/mm/dd'),TO_DATE('2020/08/31','yyyy/mm/dd'),6000,'coupon.jpg',1,0);
insert into tblcoupon values(couponSeq.nextVal,'여름맞이 틀별 할인권4',TO_DATE('2020/06/30','yyyy/mm/dd'),TO_DATE('2020/08/31','yyyy/mm/dd'),7000,'coupon.jpg',2,0);
insert into tblcoupon values(couponSeq.nextVal,'여름맞이 틀별 할인권5',TO_DATE('2020/06/30','yyyy/mm/dd'),TO_DATE('2020/08/31','yyyy/mm/dd'),8000,'coupon.jpg',2,0);
insert into tblcoupon values(couponSeq.nextVal,'여름맞이 틀별 할인권6',TO_DATE('2020/06/30','yyyy/mm/dd'),TO_DATE('2020/08/31','yyyy/mm/dd'),9000,'coupon.jpg',3,0);
insert into tblcoupon values(couponSeq.nextVal,'여름맞이 틀별 할인권7',TO_DATE('2020/06/30','yyyy/mm/dd'),TO_DATE('2020/08/31','yyyy/mm/dd'),10000,'coupon.jpg',3,0);
insert into tblcoupon values(couponSeq.nextVal,'여름맞이 틀별 할인권8',TO_DATE('2020/06/30','yyyy/mm/dd'),TO_DATE('2020/08/31','yyyy/mm/dd'),5000,'coupon.jpg',4,0);
insert into tblcoupon values(couponSeq.nextVal,'여름맞이 틀별 할인권9',TO_DATE('2020/06/30','yyyy/mm/dd'),TO_DATE('2020/08/31','yyyy/mm/dd'),6000,'coupon.jpg',4,0);
insert into tblcoupon values(couponSeq.nextVal,'여름맞이 틀별 할인권10',TO_DATE('2020/06/30','yyyy/mm/dd'),TO_DATE('2020/08/31','yyyy/mm/dd'),7000,'coupon.jpg',5,0);
insert into tblcoupon values(couponSeq.nextVal,'여름맞이 틀별 할인권11',TO_DATE('2020/06/30','yyyy/mm/dd'),TO_DATE('2020/08/31','yyyy/mm/dd'),8000,'coupon.jpg',5,0);
insert into tblcoupon values(couponSeq.nextVal,'여름맞이 틀별 할인권12',TO_DATE('2020/06/30','yyyy/mm/dd'),TO_DATE('2020/08/31','yyyy/mm/dd'),8000,'coupon.jpg',6,0);
insert into tblcoupon values(couponSeq.nextVal,'여름맞이 틀별 할인권13',TO_DATE('2020/06/30','yyyy/mm/dd'),TO_DATE('2020/08/31','yyyy/mm/dd'),8000,'coupon.jpg',6,0);
insert into tblcoupon values(couponSeq.nextVal,'여름맞이 틀별 할인권14',TO_DATE('2020/06/30','yyyy/mm/dd'),TO_DATE('2020/08/31','yyyy/mm/dd'),8000,'coupon.jpg',7,0);
insert into tblcoupon values(couponSeq.nextVal,'여름맞이 틀별 할인권15',TO_DATE('2020/06/30','yyyy/mm/dd'),TO_DATE('2020/08/31','yyyy/mm/dd'),8000,'coupon.jpg',7,0);
insert into tblcoupon values(couponSeq.nextVal,'여름맞이 틀별 할인권16',TO_DATE('2020/06/30','yyyy/mm/dd'),TO_DATE('2020/08/31','yyyy/mm/dd'),8000,'coupon.jpg',8,0);
insert into tblcoupon values(couponSeq.nextVal,'여름맞이 틀별 할인권17',TO_DATE('2020/06/30','yyyy/mm/dd'),TO_DATE('2020/08/31','yyyy/mm/dd'),8000,'coupon.jpg',8,0);


select seq,title,startdate,enddate from tblShow where delflag = 0;

select seq,title,startdate,enddate from tblShow where delflag = 0

delete from tblCoupon

commit;

SELECT * FROM TBL


select a.* from (select rownum as rnum, v.* from tblCoupon v  
where (delflag = 0 and title like '%%' or startdate like '%%' or enddate like '%%' or discount like '%%')) a
where rnum >= 1 and rnum <= 10 order by seq asc;



select * from tblShow;



select * from tblEvent;


select 
    *
from tblCoupon tc inner join tblShow ts on tc.showseq = ts.seq;




