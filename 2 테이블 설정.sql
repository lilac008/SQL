# 날 짜 : 2022/06/14
# 이 름 : 최희원
# 내 용 : 테이블 설정 실습


####################################################
1. PRIMARY KEY(기본키) : 값이 중복되지 않으며, 반드시 입력
####################################################

# 실습하기 2-1
CREATE TABLE `user2` 
(	`uid`		VARCHAR(10) PRIMARY key,
	`name`	VARCHAR(10)            ,
	`hp`		CHAR(13)               ,
	`age`		TINYINT
);

INSERT INTO `user2` VALUES ('a101','김유신','010-1234-1111', 25);
INSERT INTO `user2` VALUES ('a102','김춘추','010-1234-2222', 23);
INSERT INTO `user2` VALUES ('a103','장보고','010-1234-3333', 35);
INSERT INTO `user2` VALUES ('a104','강감찬','010-1234-4444', 45);
INSERT INTO `user2` VALUES ('a105','이순신','010-1234-5555', 51);
INSERT INTO `user2` VALUES ('a106','정약용','010-1234-6666', 42);

SELECT*FROM USER2;

####################################################
2. UNIQUE(고유키) : 값이 중복되지 않으며 NULL 입력 가능.
####################################################

# 실습하기 2-2
CREATE TABLE `user3` 
(	`uid`		VARCHAR(10)              ,
	`name`	VARCHAR(10)              ,
	`hp`		CHAR(13)           unique,
	`age`		TINYINT
);

INSERT INTO `user3` VALUES ('a101','김유신','010-1234-1111', 25);
INSERT INTO `user3` VALUES ('a102','김춘추','010-1234-2222', 23);
INSERT INTO `user3` VALUES ('a103','장보고','010-1234-3333', 35);
INSERT INTO `user3` VALUES ('a104','강감찬','010-1234-4444', 45);
INSERT INTO `user3` VALUES ('a105','이순신','010-1234-5555', 51);
INSERT INTO `user3` VALUES ('a106','정약용','010-1234-6666', 42);

SELECT*FROM USER3;

####################################################
3. 
FOREIGN KEY(외래키) : 두 테이블을 연결 (외래키를 가진 식테이블 + 외래키값을 제공하는 모테이블).
                      FOREIGN KEY는 NULL이거나 모테이블 PRIMARY KEY값과 동일해야함(참조 무결성 제약 조건)

CREATE TABLE 테이블명 
(      col명     dataTYPE      Foreign KEY(`col1`) REFERENCES `모테이블명` (`id1`) 
);
####################################################
# 실습하기 2-3
CREATE TABLE `parent` 
(	`uid`		VARCHAR(10) PRIMARY KEY,
	`name`	VARCHAR(10)            ,
	`hp`		CHAR(13)         UNIQUE
);

INSERT INTO `parent` VALUES ('p101', '김유신', '010-1234-1001');
INSERT INTO `parent` VALUES ('p102', '장보고', '010-1234-1002');
INSERT INTO `parent` VALUES ('p103', '이순신', '010-1234-1003');

SELECT*FROM `parent`;




CREATE TABLE `user4` (
	`uid`		VARCHAR(10)   PRIMARY key,
	`name`	VARCHAR(10)              ,
	`hp`		CHAR(13)           unique,
	`pID`		VARCHAR(10), FOREIGN KEY (`pID`) REFERENCES `parent` (`uid`)
);

INSERT INTO `user4` values ('c101','김철수','010-1234-1111','p101');
INSERT INTO `user4` values ('c102','장철수','010-1234-2222','p102');
INSERT INTO `user4` values ('c103','이철수','010-1234-3333','p103');
INSERT INTO `user4` values ('c104','황철수','010-1234-4444','p104');    // parent에없으므로 안 된다.
INSERT INTO `user4` values ('c104','김영희','010-1234-5555','p101'); 

SELECT*FROM `user4`;




####################################################
4. AUTO_INCREMENT 키워드
####################################################

# 실습하기 2-4
CREATE TABLE `user5` 
(	`seq`		INT AUTO_INCREMENT PRIMARY KEY,
	`name` 	VARCHAR(10),
	`gender` TINYINT,
	`age`		INT,
	`addr`	VARCHAR(255)
);

INSERT INTO `user5` (`name`, `gender`, `age`, `addr`) VALUES ('김유신', 1, 25, '김해시');
INSERT INTO `user5` (`name`, `gender`, `age`, `addr`) VALUES ('김춘추', 2, 21, '경주시');
INSERT INTO `user5` (`name`, `gender`, `age`, `addr`) VALUES ('선덕여왕', 2, 35, '경주시');
INSERT INTO `user5` (`name`, `gender`, `age`, `addr`) VALUES ('장보고', 1, 31, '완도시');
INSERT INTO `user5` (`name`, `gender`, `age`, `addr`) VALUES ('김유신', 2, 42, '강릉시');
INSERT INTO `user5` (`name`, `gender`, `age`, `addr`) VALUES ('허난설헌', 2, 27, '광주시');
INSERT INTO `user5` (`age`, `addr`) VALUES (27, '광주시');

SELECT*FROM `user5`;




####################################################
5. DEFAULT : 값을 입력하지 않아도 자동으로 입력되는 기본값. 모든 COLUMN의 DEFAULT는 null
   NULL : 아무것도 없는 값.
  	NOT NULL : 반드시 데이터를 입력받아야 함.
####################################################
# 실습하기 2-5
CREATE TABLE `user6` 
(	`seq`		INT          AUTO_INCREMENT PRIMARY KEY,
	`name` 	VARCHAR(10)  NOT null,
	`gender` TINYINT              ,
	`age`		INT          DEFAULT 1,
	`addr`	VARCHAR(255)
);

INSERT INTO `user6` (`name`, `gender`, `age`, `addr`) VALUES ('김유신', 1, 25, '김해시');
INSERT INTO `user6` (`name`, `gender`, `age`, `addr`) VALUES ('김춘추', 2, 21, '경주시');
INSERT INTO `user6` (`name`, `gender`, `age`, `addr`) VALUES ('선덕여왕', 2, 35, '경주시');
INSERT INTO `user6` (`name`, `gender`, `age`, `addr`) VALUES ('장보고', 1, 31, '완도시');
INSERT INTO `user6` (`name`, `gender`, `age`, `addr`) VALUES ('김유신', 2, 42, '강릉시');
INSERT INTO `user6` (`name`, `gender`, `age`, `addr`) VALUES ('허난설헌', 2, 27, '광주시');
INSERT INTO `user6` (`name`, `addr`) VALUES ('이순신', '서울시');                  // not NULL이라서


SELECT*FROM `user6`;



####################################################
6. TABLE 복사

TABLE 복사     : CREATE TABLE 새테이블명 LIKE 기존테이블명;

TABLE DATA 복사: INSERT INTO 새테이블명 (`col1`...) SELECT `col1`... FROM 기존테이블명;
                 INSERT INTO 새테이블명 SELECT*FROM 기존테이블명;
####################################################
# 실습하기 2-6
CREATE TABLE `user7` LIKE `user6`;
SELECT*FROM `user7`;


# 실습하기 2-7
INSERT INTO `user7` (`name`, `gender`, `age`, `addr`) SELECT `name`, `gender`, `age`, `addr` FROM `user6`;
INSERT INTO `user7` SELECT * FROM `user6`;

SELECT*FROM `user7`;

