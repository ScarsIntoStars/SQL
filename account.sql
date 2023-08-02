-- 계좌테이블(부모)
CREATE TABLE ACCOUNT( 
ANO INT NOT NULL PRIMARY KEY,
ANAME VARCHAR(20) NOT NULL,
BALANCE INT DEFAULT 0
);

-- 거래내역테이블(자녀)
CREATE TABLE DETAIL(
DNO INT NOT NULL PRIMARY KEY,
ANO INT NOT NULL,
AMOUNT INT DEFAULT 0,
TYPE CHAR(6) NOT NULL,
DDATE DATE DEFAULT SYSDATE, -- 시스테이터는 오늘 날짜
FOREIGN KEY(ANO) REFERENCES ACCOUNT (ANO) -- 참조
);

DROP TABLE DETAIL;


-- 계좌번호 SEQUENCE 생성
CREATE SEQUENCE SEQ_ANO START WITH 100 INCREMENT BY 1;

-- 거래번호
CREATE SEQUENCE SEQ_DNO START WITH 1 INCREMENT BY 1;

-- 계좌데이터 입력
INSERT INTO ACCOUNT(ANO, ANAME, BALANCE)
VALUES(SEQ_ANO.NEXTVAL, '홍길동', 500);
INSERT INTO ACCOUNT(ANO, ANAME, BALANCE)
VALUES(SEQ_ANO.NEXTVAL, '심청이', 1000);
INSERT INTO ACCOUNT(ANO, ANAME, BALANCE)
VALUES(SEQ_ANO.NEXTVAL, '강감찬', 100);

SELECT * FROM ACCOUNT;

-- 거래내역 입력
INSERT INTO DETAIL(DNO, ANO, AMOUNT, TYPE, DDATE)
VALUES(SEQ_DNO.NEXTVAL, 100, 1000, '입금', '2023-07-09');
INSERT INTO DETAIL(DNO, ANO, AMOUNT, TYPE, DDATE)
VALUES(SEQ_DNO.NEXTVAL, 101, 1000, '입금', '2023-07-09');
INSERT INTO DETAIL(DNO, ANO, AMOUNT, TYPE, DDATE)
VALUES(SEQ_DNO.NEXTVAL, 102, 1000, '입금', '2023-07-10');
INSERT INTO DETAIL(DNO, ANO, AMOUNT, TYPE, DDATE)
VALUES(SEQ_DNO.NEXTVAL, 100, 500, '출금', '2023-07-11');

INSERT INTO DETAIL(DNO, ANO, AMOUNT,TYPE)
VALUES(SEQ_DNO.NEXTVAL,100,2000,'입금');

--DNO INT NOT NULL PRIMARY KEY,
--ANO INT NOT NULL,
--AMOUNT INT DEFAULT 0,
--TYPE CHAR(6) NOT NULL,



SELECT * FROM DETAIL;

COMMIT;

SELECT * FROM ACCOUNT WHERE ANO=100;
SELECT * FROM DETAIL WHERE ANO=100;
