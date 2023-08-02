/* 'jvav우클릭 QLS워크스페이스 시트 열기' */

/* 정해져 있으면 캐릭터, 아니면 varchar */
/* 데이타베이스에서 제일 중요한 것은 무결성 */


/* 테이블 생성 */
  create table students(
  sno char(6) not null primary key,/* 학번 */
  sname varchar(20) not null,/* 이름 */
  dept varchar(20) not null,/* 학과 */
  birthday date,/* 생년월일 */
  year int default 1 /* 학년, 디폴트 값을 주면 입력하지 않으면 자동으로 넣어줌 여기서는 1을 디폴트로 넣었음 */
);

desc students;
drop table students;

select * from students; /* 출력 */

insert into students (sno, sname, dept) /* 필수입력 */
values('202301', '홍길동', '컴정'); /* 외워야 됨 */
insert into students (sno, sname, dept, birthday)
values('202302', '심청이', '컴정', '2000-10-04'); 
insert into students (sno, sname, dept, birthday)
values('202303', '이순신', '컴정', '2000-12-17'); 



select * from students; /* *은 모든 컬럼(열)을 출력 */
select * from students where sno='202302'; /* where은 조건이라고 생각함 */
select * from students where sname like '이%'; /* 와일드카드 문자, 이로 시작하는 사람을 출력*/ 
select * from students where sname like '%이'; /* 와일드카드 문자, 이로 끝나는 사람을 출력*/ 
select * from students where sname like '%이%'; /* 와일드카드 문자, 이가 들어가는 사람을 출력*/ 
select * from students where sname like '%이%' order by birthday desc; /* 생년월일 순으로 정렬 asc작->큰, desc큰->작*/
select * from students where sname like '%이%' order by sname, birthday desc; /* 옵션 두 개 주기 */
select max(sno) from students; /* 가장 큰 학번을 출력 */
select max(sno)+1 from students;
select max(sno)+1 newno from students; /* MAX(SNO)+1의 콜럼 이름을 newno로 변경 */

-- 수정(업데이트)
UPDATE students set birthday='2022-01-01' where sno='202301'; /* 202301 학생의 생일을 추가*/
/* set과 where의 순서가 바뀌면 '안됨 셀렉트 프롬 웨어 오더바이'*/

-- 삭제
delete from students where sno='202301';


-- 커밋을 해야 서버에 저장이 됨
commit;

select * from students;
