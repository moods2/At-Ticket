


select * from tab;

select * from tbladmin;

select * from tblEmploNotice;

select * from tblEvent;


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


select * from tblEmployee where seq = 206;

insert into tblEmployee values (employeeSeq.nextVal,'김옥녀','대리','4500000','860123-1057987','010-7894-1246',4,0);

select employeeSeq.currval from dual;

select * from tblBuseo;

commit;

