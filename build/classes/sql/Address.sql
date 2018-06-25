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
	1009, '10508', '경기도', '고양시', '덕양구', '지도로 77'
);
INSERT INTO address VALUES();
SELECT * FROM address;

