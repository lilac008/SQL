# 날 짜 : 2022/06/14
# 이 름 : 최희원
# 내 용 : SQL 확인 문제 실습


# 실습하기 4-1
CREATE TABLE `tbl_member`
(	`memberID` 		VARCHAR(10) PRIMARY KEY,
	`memberName`	VARCHAR(10) NOT NULL,
	`memberHp`   	CHAR(13)    UNIQUE,
	`memberAge` 	INT               ,
	`memberAddr`	VARCHAR(20)
);

CREATE TABLE `tbl_product`
(	`productCode`	INT         AUTO_INCREMENT PRIMARY KEY,
	`productName`	VARCHAR(10) NOT NULL,
	`price`			INT	      NOT NULL,
	`amount`			INT	      default 0,
	`company`		VARCHAR(10)          ,
	`makeDate`		DATE 
);

# 실습하기 4-2
INSERT INTO `tbl_member` VALUES ('p101','김유신','010-1234-1001',25,'신라');
INSERT INTO `tbl_member` VALUES ('p102','김춘추','010-1234-1002',23,'신라');
INSERT INTO `tbl_member` (`memberID`,`memberName`,`memberAge`,`memberAddr`) VALUES ('p103','장보고', 31, '통일신라');
INSERT INTO `tbl_member` (`memberID`,`memberName`,`memberAddr`) VALUES ('p104','강감찬', '고려');
INSERT INTO `tbl_member` SET `memberID`='p105', `memberName`='이순신', `memberHP`='010-1234-1005', `memberAge`='50';

SELECT*FROM `tbl_member`;


INSERT INTO `tbl_product` (`productName`, `price`, `amount`, `company`, `makeDate`) VALUES ('냉장고', 800, 10, 'LG', '2022-01-06');
INSERT INTO `tbl_product` SET `productName`='노트북', `price`='1200', `amount`='20', `company`='삼성', `makeDate`='2022-01-06';
INSERT INTO `tbl_product` (`productName`, `price`, `amount`, `company`, `makeDate`) VALUES ('TV', 1400, 6, 'LG', '2022-01-06');
INSERT INTO `tbl_product` (`productName`, `price`, `amount`, `company`, `makeDate`) VALUES ('세탁기', 1000, 8, 'LG', '2022-01-06');
INSERT INTO `tbl_product` (`productName`, `price`) VALUES ('컴퓨터', 1100);
INSERT INTO `tbl_product` (`productName`, `price`, `amount`, `company`, `makeDate`) VALUES ('휴대폰', 900, 102, '삼성', '2022-01-06');

SELECT*FROM `tbl_product`;


# 실습하기 4-3

###############  SELECT*FROM `tbl_member`;

SELECT `memberName` FROM `tbl_member`;
SELECT `memberName`,`memberHP` FROM `tbl_member`;

SELECT * FROM `tbl_member` where `memberID` = 'p102';
SELECT * FROM `tbl_member` where `memberID` = 'p104' OR `memberID` = 'p105';
SELECT * FROM `tbl_member` where `memberAddr` = '신라';
SELECT * FROM `tbl_member` where `memberAge` > 30;
SELECT * FROM `tbl_member` where `memberHP` IS NULL;

UPDATE `tbl_member` SET `memberAge`=42 WHERE `memberID`='p104';
UPDATE `tbl_member` SET `memberAddr`='조선' WHERE `memberID`='p105';

DELETE FROM `tbl_member` WHERE `memberID`='p103';


###############  SELECT*FROM `tbl_product`;

SELECT `productName` FROM `tbl_product`;
SELECT `productName`,`price` FROM `tbl_product`;

SELECT * FROM `tbl_product` WHERE `company`='LG';
SELECT * FROM `tbl_product` WHERE `company`='삼성';

UPDATE `tbl_product` SET `company`='삼성',`makeDate`='2021-01-01' WHERE `productcode`=5;



