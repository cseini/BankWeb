SELECT * FROM TAB;
-- userid, password, name, ssn, regidate, addr_seq, phone, email, profile, access_num, credit_rating
CREATE TABLE member(
	userid VARCHAR2(20) PRIMARY KEY,
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
DROP TABLE member;
--	userid,	password, name, ssn,regidate,	phone, email, profile, access_num, credit_rating, addr_seq, account_seq
INSERT INTO member
(
	userid,	password, name, ssn, regidate, 
	phone, email, profile, access_num, credit_rating,
	addr_seq, account_seq
)
VALUES
(
	'seini144',	'1', '최세인', '840221-1', SYSDATE,
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
	'wsh72', 'shsh73', '원성희', '720811-1', SYSDATE,
	'010-1212-5412', 'won@hanmail.com', 'won.jpg', '',5,
	1009, 1009
);
--조인 JOIN
SELECT * FROM member, account
WHERE member.account_seq = account.account_seq
AND member.userid ='seini144'
;

SELECT * FROM member, account, address
WHERE member.account_seq = account.account_seq
AND member.userid='uday'
;
SELECT * FROM member;
