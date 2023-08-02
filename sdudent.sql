/* 'jvav우클릭 QLS워크스페이스 시트 열기' */

/* 정해져 있으면 캐릭터, 아니면 varchar */
/* 데이타베이스에서 제일 중요한 것은 무결성 */


/* 테이블 생성 */
  create table students(
  sno char(6) not null primary key,/* 학번 */
  sname varchar(20) not null,/* 이름 */
  dept varchar(20) not null,/* 학과 */
  birthday date,/* 생년월일 */
  year int default 1 /* 학년, 학년을 입력하지 않으면 1을 넣음 */
);