/* 'jvav��Ŭ�� QLS��ũ�����̽� ��Ʈ ����' */

/* ������ ������ ĳ����, �ƴϸ� varchar */
/* ����Ÿ���̽����� ���� �߿��� ���� ���Ἲ */


/* ���̺� ���� */
  create table students(
  sno char(6) not null primary key,/* �й� */
  sname varchar(20) not null,/* �̸� */
  dept varchar(20) not null,/* �а� */
  birthday date,/* ������� */
  year int default 1 /* �г�, �г��� �Է����� ������ 1�� ���� */
);