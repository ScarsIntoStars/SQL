/*  테이블 생성 (주석은 이렇게) */
create table tbl_juso(
  no int primary key, 
  name varchar(20) not null,
  juso varchar(500),
  phone varchar(20)
);

/* 테이블 구조 확인 */
desc tbl_juso;

/* 테이블 삭제 */
drop table tbl_juso;


/* 데이터 입력 */
insert into tbl_juso(no,name,juso,phone)
values(10, '홍길동', '인천', '010-1010-1010');
insert into tbl_juso(no,name,juso,phone)
values(11, '홍길동', '인천', '010-1010-1010');
insert into tbl_juso(no,name,juso,phone)
values(12, '박심청', '연천', '010-8877-4455');
insert into tbl_juso(no,name,juso,phone)
values(13, '강감찬', '대구', '010-1577-1577');
insert into tbl_juso(no,name,juso,phone)
values(14, '이순신', '부산', '010-1313-1313');
insert into tbl_juso(no,name,juso,phone)
values(15, '이신찬', '한양', '010-4477-1122');

/* 데이터 출력 */
select no, name from tbl_juso;
select * from tbl_juso;
select * from tbl_juso where no=12;
select * from tbl_juso where name like '홍%'; /*홍으로 시작하는 것만 출력*/
select * from tbl_juso where name like '%이%'; /*이 들어있으면 다 출력*/
select * from tbl_juso order by name; /*오름차순*/
select * from tbl_juso order by name desc; /*내림차순*/ 
select * from tbl_juso where name like '홍%' order by name; /* 출력 후 정렬 */

/* 데이터 수정*/
update tbl_juso set name='김길동' where no=10; /*10번의 이름일 김길동으로 변경*/
set name='김길동', juso='경기도'
where no=10;

/* 데이터 삭제 */
delete from tbl_juso where no=10;


commit;