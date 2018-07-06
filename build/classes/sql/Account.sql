SELECT * FROM TAB;
-- account_seq(decimal), money(decimal), account_type, account_num, create_date(date),  limit(decimal)
CREATE SEQUENCE account_seq
START WITH 1000
MAXVALUE 10000
;
CREATE TABLE account(
	account_seq DECIMAL PRIMARY KEY,
	money DECIMAL,
	account_num VARCHAR2(20),
	account_type VARCHAR2(20),
	create_date DATE,
	limit DECIMAL
);
INSERT INTO account 
(
	account_seq, money, account_num, account_type, create_date, limit
)
VALUES
(
	account_seq.nextval, 1000, '214-467-790', '일반통장', SYSDATE, 0 
);
INSERT INTO account 
(
	account_seq, money, account_num, account_type, create_date, limit
)
VALUES
(
	account_seq.nextval, 100000, '443-215-011', '일반통장', SYSDATE, 0 
);
INSERT INTO account 
(
	account_seq, money, account_num, account_type, create_date, limit
)
VALUES
(
	account_seq.nextval, 100000, '343-515-611', '일반통장', SYSDATE, 0 
);
INSERT INTO account 
(
	account_seq, money, account_num, account_type, create_date, limit
)
VALUES
(
	account_seq.nextval, 100000, '743-815-911', '일반통장', SYSDATE, 0 
);
INSERT INTO account 
(
	account_seq, money, account_num, account_type, create_date, limit
)
VALUES
(
	account_seq.nextval, 100000, '413-225-031', '일반통장', SYSDATE, 0 
);
INSERT INTO account 
(
	account_seq, money, account_num, account_type, create_date, limit
)
VALUES
(
	account_seq.nextval, 100000, '453-265-071', '일반통장', SYSDATE, 0 
);
INSERT INTO account 
(
	account_seq, money, account_num, account_type, create_date, limit
)
VALUES
(
	account_seq.nextval, 100000, '483-295-001', '일반통장', SYSDATE, 0 
);
INSERT INTO account 
(
	account_seq, money, account_num, account_type, create_date, limit
)
VALUES
(
	account_seq.nextval, 100000, '441-212-013', '일반통장', SYSDATE, 0 
);
INSERT INTO account 
(
	account_seq, money, account_num, account_type, create_date, limit
)
VALUES
(
	account_seq.nextval, 100000, '444-215-016', '일반통장', SYSDATE, 0 
);
INSERT INTO account 
(
	account_seq, money, account_num, account_type, create_date, limit
)
VALUES
(
	account_seq.nextval, 100000, '447-218-019', '일반통장', SYSDATE, 0 
);
SELECT userid, name, account_num, city
FROM member m, account ac, address ad
WHERE m.account_seq=ac.account_seq
AND ad.addr_seq='청주시'
;
SELECT * FROM account;
