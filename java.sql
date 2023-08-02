/*  ���̺� ���� (�ּ��� �̷���) */
create table tbl_juso(
  no int primary key, 
  name varchar(20) not null,
  juso varchar(500),
  phone varchar(20)
);

/* ���̺� ���� Ȯ�� */
desc tbl_juso;

/* ���̺� ���� */
drop table tbl_juso;


/* ������ �Է� */
insert into tbl_juso(no,name,juso,phone)
values(10, 'ȫ�浿', '��õ', '010-1010-1010');
insert into tbl_juso(no,name,juso,phone)
values(11, 'ȫ�浿', '��õ', '010-1010-1010');
insert into tbl_juso(no,name,juso,phone)
values(12, '�ڽ�û', '��õ', '010-8877-4455');
insert into tbl_juso(no,name,juso,phone)
values(13, '������', '�뱸', '010-1577-1577');
insert into tbl_juso(no,name,juso,phone)
values(14, '�̼���', '�λ�', '010-1313-1313');
insert into tbl_juso(no,name,juso,phone)
values(15, '�̽���', '�Ѿ�', '010-4477-1122');

/* ������ ��� */
select no, name from tbl_juso;
select * from tbl_juso;
select * from tbl_juso where no=12;
select * from tbl_juso where name like 'ȫ%'; /*ȫ���� �����ϴ� �͸� ���*/
select * from tbl_juso where name like '%��%'; /*�� ��������� �� ���*/
select * from tbl_juso order by name; /*��������*/
select * from tbl_juso order by name desc; /*��������*/ 
select * from tbl_juso where name like 'ȫ%' order by name; /* ��� �� ���� */

/* ������ ����*/
update tbl_juso set name='��浿' where no=10; /*10���� �̸��� ��浿���� ����*/
set name='��浿', juso='��⵵'
where no=10;

/* ������ ���� */
delete from tbl_juso where no=10;


commit;