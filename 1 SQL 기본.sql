# 날 짜 : 2022/06/13
# 이 름 : 최희원
# 내 용 : SQL 기본실습


DATABASE(데이터 베이스) : 
DBMS(DB관리시스템) : Oracle, MySQL, MS-SQL, MaridDB(오픈소스) 등이 있다.  

TABLE(도표) : DB의 최소단위, 하나 이상의 열로 구성되어 있다.
SQL(Structured QUERY LANGUAGE)

MySQL DATA TYPE
숫자형 : TINYINT(-128 ~ 127), SMALLINT, MEDIUMINT, INT(-2147483648~2147483647), BIGINT
         FLOAT(소수점 7자리), DOUBLE(소수점 15자리)
문자형 : CHAR(고정형255), VARCHAR(가변형 255), TEXT(65535), LONGTEXT(4394967295) 
날짜시간형 : DATETIME(년도,날짜,시간) 
             DATE(년도,날짜)
             YEAR(년도)
             TIME(시간)
             
###########################################
1. DB생성/제거
CREATE DATABASE DB명
DROP DATABASE DB명
USE DB명
###########################################

#실습하기 1-1
CREATE DATABASE `MyDB`;
DROP DATABASE `MyDB`;

CREATE DATABASE `testDB`;
DROP DATABASE `testDB`;




##########################################
2. TABLE 생성/제거
CREATE TABLE 테이블명
DROP TABLE if EXISTS 테이블명
DROP TABLE 테이블명
###########################################

#실습하기 1-2
USE testdb;
CREATE TABLE `User1` 
(	`uid`  VARCHAR(10),
	`name` VARCHAR(10),
	`hp`   CHAR(13),
	`age`  INT
);

DROP TABLE `User1`;




##########################################
3. TABLE data 추가
추가           : INSERT INTO 테이블명 VALUES (데이터1, ...);
칼럼 지정 추가 : INSERT INTO 테이블명(col 1, ...) VALUES (데이터1,...);
                 INSERT INTO 테이블명 SET `col 1`='데이터1', ...;
##########################################

#실습하기 1-3
INSERT INTO `User1` VALUES ('A101', '김유신', '010-1234-1111', 25);
INSERT INTO `User1` VALUES ('A102', '김춘추', '010-1234-2222', 23);
INSERT INTO `User1` VALUES ('A103', '장보고', '010-1234-3333', 32);
INSERT INTO `User1` (`uid`, `name`, `age`) VALUES ('A104', '강감찬', 45);
             
INSERT INTO `User1` SET `uid`  = 'A105', 
								`name` = '이순신', 
								`hp`   = '010-1234-5555';





##########################################
4.TABLE data 추출
data 추출      : SELECT col 1, ... FROM 테이블명;
                 SELECT col 1, ... FROM 테이블명 WHERE 조건;
모든 data 추출 : SELECT*FROM 테이블명;
                 SELECT*FROM DB명.테이블명; 
##########################################

#실습하기 1-4
SELECT `uid`, `name` FROM `user1`;
SELECT `uid` FROM `user1` WHERE `uid`='A101';
SELECT `uid`, `name`, `age` FROM `User1`;
SELECT `uid`, `name`, `hp`, `age` FROM `user1` WHERE `uid`='A101';
= SELECT * FROM `User1` WHERE `uid`='A101';

SELECT * FROM `User1`;
SELECT * FROM `User1` WHERE `uid`='A101';
SELECT * FROM `User1` WHERE `name`='김춘추';
SELECT * FROM `User1` WHERE `age` > 30;





##########################################
5. TABLE data 수정
UPDATE 테이블명 SET col 1=데이터1...;
UPDATE 테이블명 SET col 1=데이터1...where 위치;

##########################################

#실습하기 1-5
UPDATE `User1` SET `hp`='010-1234-4444' WHERE `uid`='A104';

UPDATE `User1` SET `age` = 51 WHERE `uid`='A105';

UPDATE `User1` SET 
					  	`hp`  = '010-1234-1001', 
					  	`age` = 17
					WHERE 
						`uid`='A101';
						
						
SELECT * FROM `User1`;						






##########################################
6. TABLE data 삭제

DELETE FROM 테이블명 WHERE 조건/위치;

##########################################

#실습하기 1-6
DELETE FROM `User1` WHERE `uid`='A101'; 
DELETE FROM `User1` WHERE `uid`='A102' AND `age`=25;
DELETE FROM `User1` WHERE `age`>=30;


SELECT * FROM `User1`;	



