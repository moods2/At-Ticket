


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




