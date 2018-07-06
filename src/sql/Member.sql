SELECT * FROM TAB;
-- userid, password, name, ssn, regidate, addr_seq, phone, email, profile, access_num, credit_rating
CREATE TABLE member(
	userid VARCHAR2(20) CONSTRAINT member_pk_userid PRIMARY KEY,
	password VARCHAR2(20),
	name VARCHAR2(20),
	ssn VARCHAR2(8),
	regidate DATE,
	phone VARCHAR2(13),
	email VARCHAR2(20),
	profile VARCHAR2(8),
	access_num VARCHAR2(8),
	credit_rating DECIMAL,
	addr_seq DECIMAL,
	account_seq DECIMAL
);
ALTER TABLE member ADD CONSTRAINT address_fk_addr_seq
	FOREIGN KEY (addr_seq) REFERENCES address(addr_seq);
	
ALTER TABLE member ADD CONSTRAINT account_fk_account_seq
	FOREIGN KEY (account_seq) REFERENCES account(account_seq);
	
--	userid,	password, name, ssn,regidate,	phone, email, profile, access_num, credit_rating, addr_seq, account_seq
INSERT INTO member
(
	userid,	password, name, ssn, regidate, 
	phone, email, profile, access_num, credit_rating,
	addr_seq, account_seq
)
VALUES
(
	'seini144',	'1234', '최세인', '840221-1', SYSDATE,
	'010-4057-0570', 'cseini@nate.com', 'sein.jpg', '',5,
	1000, 1000
);
INSERT INTO member
(
	userid,	password, name, ssn, regidate, 
	phone, email, profile, access_num, credit_rating,
	addr_seq, account_seq
)
VALUES
(
	'uday',	'1312', '윤진아', '891104-2', SYSDATE,
	'010-4710-8498', 'bsyi@gmail.com', 'uday.jpg', '',5,
	1001, 1001
);
INSERT INTO member
(
	userid,	password, name, ssn, regidate, 
	phone, email, profile, access_num, credit_rating,
	addr_seq, account_seq
)
VALUES
(
	'heson', '1123', '최혜선', '770902-2', SYSDATE,
	'010-1234-5678', 'son@nate.com', 'son.jpg', '',5,
	1002, 1002
);
INSERT INTO member
(
	userid,	password, name, ssn, regidate, 
	phone, email, profile, access_num, credit_rating,
	addr_seq, account_seq
)
VALUES
(
	'seho',	'1', '최세호', '820121-1', SYSDATE,
	'010-1212-2323', 'seho@nate.com', 'seho.jpg', '',5,
	1003, 1003
);
INSERT INTO member
(
	userid,	password, name, ssn, regidate, 
	phone, email, profile, access_num, credit_rating,
	addr_seq, account_seq
)
VALUES
(
	'moonbear',	'1', '김일신', '830311-1', SYSDATE,
	'010-2323-2424', 'bear@nate.com', 'kim.jpg', '',5,
	1004, 1004
);
INSERT INTO member
(
	userid,	password, name, ssn, regidate, 
	phone, email, profile, access_num, credit_rating,
	addr_seq, account_seq
)
VALUES
(
	'jangyj',	'1', '장영진', '8308101-1', SYSDATE,
	'010-4321-2310', 'jang@nate.com', 'jang.jpg', '',5,
	1005, 1005
);
INSERT INTO member
(
	userid,	password, name, ssn, regidate, 
	phone, email, profile, access_num, credit_rating,
	addr_seq, account_seq
)
VALUES
(
	'baekhh',	'1', '백현호, '831121-1', SYSDATE,
	'010-4125-4211', 'ho@nate.com', 'ho.jpg', '',5,
	1006, 1006
);
INSERT INTO member
(
	userid,	password, name, ssn, regidate, 
	phone, email, profile, access_num, credit_rating,
	addr_seq, account_seq
)
VALUES
(
	'leehh',	'1', '이훈희', '830521-1', SYSDATE,
	'010-5557-5510', 'lhh@nate.com', 'lhh.jpg', '',5,
	1007, 1007
);
INSERT INTO member
(
	userid,	password, name, ssn, regidate, 
	phone, email, profile, access_num, credit_rating,
	addr_seq, account_seq
)
VALUES
(
	'kimdh',	'1', '김대훈', '830421-1', SYSDATE,
	'010-5557-5510', 'kdh@nate.com', 'kdh.jpg', '',5,
	1008, 1008
);
INSERT INTO member
(
	userid,	password, name, ssn, regidate, 
	phone, email, profile, access_num, credit_rating,
	addr_seq, account_seq
)
VALUES
(
	'wsh72', 'shsh73', '원성희', '720811-1', SYSDATE,
	'010-1212-5412', 'won@hanmail.com', 'won.jpg', '',5,
	1009, 1009
);
--조인 JOIN
SELECT name, phone, account_num, zip, province, city, gugun, doro   
FROM member, account, address
WHERE member.account_seq = account.account_seq
AND member.addr_seq=address.addr_seq
AND name ='윤진아'
;

SELECT * FROM member;
DESC member;