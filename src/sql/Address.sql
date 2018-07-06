--TABLE 객체 address
--addr_seq(DECIMAL, PRIMARY KEY)
--ZIP(VARCHAR2(20))
--province 경기도
--city 서울시, 안양시
--gugun 강남구, 가평군
--doro 백범로 15번길
SELECT * FROM TAB;
DROP TABLE address;
CREATE TABLE address(
	addr_seq DECIMAL PRIMARY KEY,
	zip VARCHAR2(20),
	province VARCHAR2(20),
	city VARCHAR2(20),
	gugun VARCHAR2(20),
	doro VARCHAR2(20)
);

INSERT INTO address
(
	addr_seq, zip, province, city, gugun, doro 
)
VALUES
(
	1001, '10348', '경기도', '고양시', '일산서구', '산현로 34'
);
INSERT INTO address
(
	addr_seq, zip, province, city, gugun, doro 
)
VALUES
(
	1002, '10348', '경기도', '고양시', '일산서구', '산현로 34'
);
INSERT INTO address
(
	addr_seq, zip, province, city, gugun, doro 
)
VALUES
(
	1003, '10895', '경기도', '파주시', '', '미래로620'
);
INSERT INTO address
(
	addr_seq, zip, province, city, gugun, doro 
)
VALUES
(
	1004, '27013', '충청북도', '단양군', '단양읍', '삼봉로 53'
);
INSERT INTO address
(
	addr_seq, zip, province, city, gugun, doro 
)
VALUES
(
	1005, '27020', '충청북도', '단양군', '영춘면', '백자길 33'
);
INSERT INTO address
(
	addr_seq, zip, province, city, gugun, doro 
)
VALUES
(
	1006, '28614', '충청북도', '청주시', '서원구', '장전로77'
);
INSERT INTO address
(
	addr_seq, zip, province, city, gugun, doro 
)
VALUES
(
	1007, '51161', '전라북도', '부안군', '변산면', '채석강길24'
);
INSERT INTO address
(
	addr_seq, zip, province, city, gugun, doro 
)
VALUES
(
	1008, '10508', '경기도', '고양시', '덕양구', '지도로 77'
);
INSERT INTO address
(
	addr_seq, zip, province, city, gugun, doro 
)
VALUES
(
	1009, '10508', '경기도', '고양시', '덕양구', '지도로 77'
);
INSERT INTO address
(
	addr_seq, zip, province, city, gugun, doro 
)
VALUES
(
	1009, '10508', '경기도', '고양시', '덕양구', '지도로 77'
);
INSERT INTO address VALUES();
SELECT * FROM address;

