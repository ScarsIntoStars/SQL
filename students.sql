/* 'jvav��Ŭ�� QLS��ũ�����̽� ��Ʈ ����' */

/* ������ ������ ĳ����, �ƴϸ� varchar */
/* ����Ÿ���̽����� ���� �߿��� ���� ���Ἲ */


/* ���̺� ���� */
  create table students(
  sno char(6) not null primary key,/* �й� */
  sname varchar(20) not null,/* �̸� */
  dept varchar(20) not null,/* �а� */
  birthday date,/* ������� */
  year int default 1 /* �г�, ����Ʈ ���� �ָ� �Է����� ������ �ڵ����� �־��� ���⼭�� 1�� ����Ʈ�� �־��� */
);

desc students;
drop table students;

select * from students; /* ��� */

insert into students (sno, sname, dept) /* �ʼ��Է� */
values('202301', 'ȫ�浿', '����'); /* �ܿ��� �� */
insert into students (sno, sname, dept, birthday)
values('202302', '��û��', '����', '2000-10-04'); 
insert into students (sno, sname, dept, birthday)
values('202303', '�̼���', '����', '2000-12-17'); 



select * from students; /* *�� ��� �÷�(��)�� ��� */
select * from students where sno='202302'; /* where�� �����̶�� ������ */
select * from students where sname like '��%'; /* ���ϵ�ī�� ����, �̷� �����ϴ� ����� ���*/ 
select * from students where sname like '%��'; /* ���ϵ�ī�� ����, �̷� ������ ����� ���*/ 
select * from students where sname like '%��%'; /* ���ϵ�ī�� ����, �̰� ���� ����� ���*/ 
select * from students where sname like '%��%' order by birthday desc; /* ������� ������ ���� asc��->ū, descū->��*/
select * from students where sname like '%��%' order by sname, birthday desc; /* �ɼ� �� �� �ֱ� */
select max(sno) from students; /* ���� ū �й��� ��� */
select max(sno)+1 from students;
select max(sno)+1 newno from students; /* MAX(SNO)+1�� �ݷ� �̸��� newno�� ���� */

-- ����(������Ʈ)
UPDATE students set birthday='2022-01-01' where sno='202301'; /* 202301 �л��� ������ �߰�*/
/* set�� where�� ������ �ٲ�� '�ȵ� ����Ʈ ���� ���� ��������'*/

-- ����
delete from students where sno='202301';


-- Ŀ���� �ؾ� ������ ������ ��
commit;

select * from students;
