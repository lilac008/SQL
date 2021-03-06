# 날 짜 : 2022/06/15
# 이 름 : 최희원
# 내 용 : SQL 고급실습


#실습하기 5-1
CREATE TABLE `Member` 
(
	`uid`		VARCHAR(10)  PRIMARY KEY,
	`name`	VARCHAR(10)  NOT NULL,
	`hp`		CHAR(13)     UNIQUE NOT NULL,
	`pos`		VARCHAR(10)  NOT NULL DEFAULT '사원',
	`dep`		INT                        ,
	`rdate`	DATETIME     NOT NULL
);

CREATE TABLE `Department` 
(
	`depNo` INT          PRIMARY KEY,
	`name`  VARCHAR(10)  NOT NULL,
	`tel`   CHAR(12)     NOT NULL
);

CREATE TABLE `Sales` 
(
	`seq`   INT          PRIMARY KEY AUTO_INCREMENT,
	`uid`   VARCHAR(10)  NOT NULL,
	`year`  YEAR         NOT NULL,
	`month` TINYINT      NOT NULL,
	`sale`  INT          NOT NULL
);


# 실습하기 5-2
#`Member` - 직원테이블     select*from `Member`;
CREATE TABLE `Member` 
(
	`uid`		VARCHAR(10)  PRIMARY KEY,
	`name`	VARCHAR(10)  NOT NULL,
	`hp`		CHAR(13)     UNIQUE NOT NULL,
	`pos`		VARCHAR(10)  NOT NULL DEFAULT '사원',
	`dep`		INT                        ,
	`rdate`	DATETIME     NOT NULL
);

INSERT INTO `Member` VALUES ('a101','박혁거세',  '010-1234-1001', '부쟝', 101, NOW());
INSERT INTO `Member` VALUES ('a102', '김유신',   '010-1234-1002', '차장', 101, NOW());
INSERT INTO `Member` VALUES ('a103', '김춘추',   '010-1234-1003', '사원', 101, NOW());    ///
INSERT INTO `Member` VALUES ('a104', '장보고',   '010-1234-1004', '대리', 102, NOW());
INSERT INTO `Member` VALUES ('a105', '강감찬',   '010-1234-1005', '과장', 102, NOW());
INSERT INTO `Member` VALUES ('a106', '이성계',   '010-1234-1006', '차장', 103, NOW());
INSERT INTO `Member` VALUES ('a107', '정철',     '010-1234-1007', '차장', 103, NOW());
INSERT INTO `Member` VALUES ('a108', '이순신',   '010-1234-1008', '부장', 104, NOW());
INSERT INTO `Member` VALUES ('a109', '허균',     '010-1234-1009', '부장', 104, NOW());

INSERT INTO `Member` (`uid`, `name`, `hp`, `dep`, `rdate`) 
				   VALUES ('a103', '김춘추', '010-1234-1003', 101, NOW());                    ///
				   
INSERT INTO `Member` (`uid`, `name`, `hp`, `dep`, `rdate`) 
				   VALUES ('a110', '정약용', '010-1234-1010', 105, NOW());
				   
INSERT INTO `Member` (`uid`, `name`, `hp`, `dep`, `rdate`) 
               VALUES ('a111', '박지원', '010-1234-1011', 105, NOW());


#`Department` - 부서테이블      select*from `Department`;
CREATE TABLE `Department` 
(
	`depNo` INT          PRIMARY KEY,
	`name`  VARCHAR(10)  NOT NULL,
	`tel`   CHAR(12)     NOT NULL
);

INSERT INTO `Department` VALUES (101, '영업1부',    '051-512-1001');
INSERT INTO `Department` VALUES (102, '영업2부',    '051-512-1002');
INSERT INTO `Department` VALUES (103, '영업3부',    '051-512-1003');
INSERT INTO `Department` VALUES (104, '영업4부',    '051-512-1004');
INSERT INTO `Department` VALUES (105, '영업5부',    '051-512-1005');
INSERT INTO `Department` VALUES (106, '영업지원부', '051-512-1006');
INSERT INTO `Department` VALUES (107, '인사부',     '051-512-1007');


#`Sales` - 매출테이블           select*from `Sales` ;
CREATE TABLE `Sales` 
(
	`seq`   INT          PRIMARY KEY AUTO_INCREMENT,
	`uid`   VARCHAR(10)  NOT NULL,
	`year`  YEAR         NOT NULL,
	`month` TINYINT      NOT NULL,
	`sale`  INT          NOT NULL
);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2018, 1,  98100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2018, 1, 136000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2018, 1,  80100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2018, 1,  78000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2018, 1,  93000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2018, 2,  23500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2018, 2, 126000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2018, 2,  18500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2018, 2,  19000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2018, 2,  53000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2019, 1,  24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2019, 1, 109000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2019, 1, 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2019, 1,  53500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a107', 2019, 1,  24000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2019, 2, 160000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2019, 2, 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2019, 2,  43000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2019, 2,  24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2019, 2, 109000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2020, 1, 201000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2020, 1,  63000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2020, 1,  74000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2020, 1, 122000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a107', 2020, 1, 111000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2020, 2, 120000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2020, 2,  93000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2020, 2,  84000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2020, 2, 180000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a108', 2020, 2,  76000);


################################################
1. 데이터 추출
비교연산자 : = 같다
             <>, != 다르다

논리 연산자: IN(B)        B 
             A IN(B)      B 중에 A가 있다
             A NOT IN(B)  B 중에 A가 없다
             A BETWEEN ~ AND ...uid  ~부터 ...사이에 A가 있다
				 A not BETWEEN ~ AND ...uid  ~부터 ...사이에 A가 없다 
검색연산자 : LIKE  와일드카드(%, _)로 문자열을 검색 

################################################
#실습하기 5-3                                              SELECT * FROM `Member`;
SELECT * FROM `Member` WHERE `name`='김유신';
SELECT * FROM `Member` WHERE `pos`='차장' and dep=101;
SELECT * FROM `Member` WHERE `pos`='차장' or dep=101;
SELECT * FROM `Member` WHERE `name`!='김춘추';
SELECT * FROM `Member` WHERE `name`<>'김춘추';
SELECT * FROM `Member` WHERE `pos`='사원' OR `pos`='대리';

SELECT * FROM `Member` WHERE `pos` IN('사원','대리');
SELECT * FROM `Member` WHERE `dep` IN(101, 102, 103);

SELECT * FROM `Member` WHERE `name` LIKE '%신';  
SELECT * FROM `Member` WHERE `name` LIKE '김%';
SELECT * FROM `Member` WHERE `name` LIKE '김__';
SELECT * FROM `Member` WHERE `name` LIKE '_성_';
SELECT * FROM `Member` WHERE `name` LIKE '정_';
#                                                                SELECT*FROM `Sales`;
SELECT * FROM `Sales` WHERE `sale` > 50000;              
SELECT * FROM `Sales` WHERE `sale` >= 50000 AND `sale` < 100000 AND `month`=1;
SELECT * FROM `Sales` WHERE `sale` BETWEEN 50000 AND 100000;
SELECT * FROM `Sales` WHERE `sale` NOT BETWEEN 50000 AND 100000;

SELECT * FROM `Sales` WHERE `year` IN(2020);
SELECT * FROM `Sales` WHERE `Month` IN(1,2);


################################################
2. 오름/내림차순으로 정렬

SELECT col1, ... FROM 테이블명 ORDER BY 기준칼럼명 ASC;
SELECT col1, ... FROM 테이블명 ORDER BY 기준칼럼명 desc;

################################################
#실습하기 5-4                                                    SELECT*FROM `Sales`;
SELECT * FROM `Sales` ORDER BY `sale`;
SELECT * FROM `Sales` ORDER BY `sale` ASC;
SELECT * FROM `Sales` ORDER BY `sale` DESC;
SELECT * FROM `Member` ORDER BY `name`;
SELECT * FROM `Member` ORDER BY `name` DESC;
SELECT * FROM `Member` ORDER BY `rdate` ASC;

SELECT * FROM `Sales` WHERE `sale` > 50000 ORDER BY `sale` DESC;
SELECT * FROM `Sales` WHERE `sale` > 50000 ORDER BY `year`,`month`,`sale` DESC;          #????????????????????



################################################
3. Record 수를 제한해서 추출   ( field - record - file 순으로 파일 구성  단위)

SELECT col1, ... FROM 테이블명 LIMIT 표시할레코드 수;
################################################
#실습하기 5-5                                                    SELECT*FROM `Sales`;

SELECT * FROM Sales LIMIT 3;
SELECT * FROM Sales LIMIT 0, 3;
SELECT * FROM Sales LIMIT 1, 3;
SELECT * FROM Sales LIMIT 4, 5;

SELECT * FROM Sales ORDER BY `sale` DESC LIMIT 3,5;

SELECT * FROM Sales WHERE `sale` < 50000 ORDER BY `sale` DESC LIMIT 3;
SELECT * FROM Sales WHERE `sale` > 50000 ORDER BY `year` DESC, `month`, `sale` DESC LIMIT 5;     #?????????????????????



################################################
4. MySQL 내장함수
집계함수 : Sum(칼럼명) 지정한 칼럼의 합계
           Avg(칼럼명) 지정한 칼럼의 평균
           Max(칼럼명) 지정한 칼럼의 최댓값
           Min(칼럼명) 지정한 칼럼의 최솟값
           COUNT(칼럼명) 레코드 수 
문자열함수 : RIGHT(`문자열`,2) 문자열에서 오른쪽 2문자만 표시
             LEFT(`문자열`,2) 문자열에서 왼쪽 2문자만 표시
             SUBSTRING(`문자열`,2,3) 문자열에서 2번째 문자부터 3개의 문자 표시
날짜함수 : NOW() DATETIME형 칼럼에 현재 날짜와 시간을 입력 
################################################
#실습하기 5-6                                                    SELECT*FROM `Sales`;
#                                                                SELECT*FROM `Member`;
SELECT SUM(`sale`) AS `합계` FROM `Sales`;
SELECT AVG(`sale`) AS `평균` FROM `Sales`;
SELECT Max(`sale`) AS `최대값` FROM `Sales`;
SELECT min(sale) AS `최소값` FROM `Sales`;
SELECT count(sale) AS `갯수` FROM `Sales`;
SELECT COUNT(*) AS `갯수` FROM `Sales`;                          #                ????????????????????


SELECT SUBSTRING(hp, 0, 4) AS '전화번호 끝자리' FROM `Member`;
SELECT SUBSTRING(hp, 1, 4) AS '전화번호 끝자리' FROM `Member`;
SELECT SUBSTRING(hp, 2, 4) AS '전화번호 끝자리' FROM `Member`;
SELECT SUBSTRING(hp, 9, 4) AS '전화번호 끝자리' FROM `Member`;
SELECT SUBSTRING(`hp`, 10, 4) AS '전화번호 끝자리' FROM `Member`;
SELECT SUBSTRING(`hp`, 11, 4) AS '전화번호 끝자리' FROM `Member`;
INSERT INTO `Member` VALUES ('b101', '을지문덕', '010-5555-1234', '사장', 107, NOW());


#                                                       SELECT*FROM `Sales`;  
#확인문제1. 2018년 1월 매출의 총합을 구하시오              
SELECT SUM(`sale`) AS `2018/01 총매출` FROM `Sales` WHERE `year`=2018 AND `month`=1;

#확인문제2. 2019년 2월달에 5만원 이상 매출에 대한 총합과 평균을 구하시오
SELECT SUM(`sale`) AS `총합`, AVG(`sale`) AS `평균` FROM `Sales` WHERE `year`=2019 AND `month`=2  AND `sale` > 50000;

#확인문제3. 2020년 전체 매출 가운데 최저, 최고, 매출을 구하시오
SELECT MIN(`sale`) AS `최저`,  MAX(`sale`) AS `최고` FROM 	`Sales` WHERE 	`year` = 2020;



################################################
5-1. 그룹별로 추출 

SELECT col1, ... FROM 테이블명 GROUP BY 그룹화칼럼명 ;
SELECT col1, ... FROM 테이블명 GROUP BY 그룹화칼럼명 HAVING 조건 ;

# COUNT(*)                                        : 테이블의 모든 ROW의 수를 센다.
# COUNT(COLUMN)                                   : 해당 COLUMN이 NOT NULL인 ROW의 수만 센다.
# COUNT(DISTINCT COLUMN)                          : 해당 COLUMN의 중복을 제거하고 NOT NULL인 ROW의 수를 센다.
# COUNT(DISTINCT CASE WHEN condition THEN result) : 조건에 해당하는 COLUMN의 NOT NULL인 ROW의 수를 센다.
################################################
#실습하기 5-7                                              SELECT*FROM `Sales`; 

# 선택한 그룹별로 분류하되 다른 항목도 모두 보임
SELECT*FROM `Sales` GROUP BY `uid`;
SELECT*FROM `Sales` GROUP BY `year`;
SELECT*FROM `Sales` GROUP BY `uid`,`year`;

# 선택항목만 보임
SELECT `uid`, COUNT(*)  AS `건수` FROM `Sales` GROUP BY `uid`;
SELECT `uid`, SUM(sale) AS `합계` FROM `Sales` GROUP BY `uid`;
SELECT `uid`, AVG(sale) AS `평균` FROM `Sales` GROUP BY `uid`;

SELECT `uid`,`year`, SUM(sale) AS `합계` FROM `Sales` GROUP BY `uid`, `year`;
SELECT `uid`,`year`, SUM(sale) AS `합계` FROM `Sales` GROUP BY `uid`, `year` ORDER BY `year`ASC, `합계` DESC;
SELECT `uid`,`year`, SUM(sale) AS `합계` FROM `Sales` WHERE `sale`>=50000  GROUP BY `uid`, `year`  ORDER BY `합계` DESC;


#실습하기 5-8
# SELECT `uid`, SUM(sale) AS `합계` FROM `Sales` GROUP BY `uid`;
SELECT `uid`, SUM(sale) AS `합계` FROM `Sales` GROUP BY `uid` HAVING SUM(sale) >= 200000;

SELECT `uid`,`year`, SUM(sale) AS `합계` FROM `Sales` WHERE `sale` >=100000 GROUP BY `uid`, `year` HAVING  SUM(sale) >=200000 ORDER BY `합계` DESC;






################################################
6. 테이블합치기 


6-1.  테이블합치기(2개 이상의 테이블에서 record 추출, 중복제외)

SELECT 칼럼명 FROM 테이블명1 
UNION
SELECT 칼럼명 FROM 테이블명2;

6-2.  테이블합치기(2개 이상의 테이블에서 record 추출, 중복허용)

SELECT 칼럼명 FROM 테이블명1 
UNION ALL 
SELECT 칼럼명 FROM 테이블명2;


################################################
#실습하기 5-9  (중복제외)                                       select*from `sales2`;
CREATE TABLE `Sales2` LIKE `Sales`;
INSERT INTO `Sales2` SELECT * from `Sales`;
UPDATE `Sales2` SET `year` = `year` + 3;


SELECT*FROM `Sales`  UNION  SELECT*FROM `Sales2`;
(SELECT*FROM `Sales`)  UNION  (SELECT*FROM `Sales2`);

SELECT `uid`,`year`,`sale` FROM Sales 
UNION
SELECT `uid`,`year`,`sale` FROM Sales2;

SELECT `uid`,`year`,SUM(`sale`) AS `합계` FROM `Sales` GROUP BY `uid`,`year` 
UNION
SELECT `uid`,`year`,SUM(`sale`) AS `합계` FROM `Sales2` GROUP BY `uid`,`year` 
ORDER BY `year` ASC, `합계` DESC;


#실습하기 5-10  (ALL 중복허용)
SELECT `seq`,`uid`,`sale` FROM sales
UNION
SELECT `seq`,`uid`,`sale` FROM sales2;            //아래와 비교


SELECT `seq`,`uid`,`sale` FROM sales
UNION ALL
SELECT `seq`,`uid`,`sale` FROM sales2;           //위와 비교 


SELECT * FROM `Sales` UNION ALL SELECT * FROM `Sales2`





################################################
7-1. 테이블 결합

내부 조인 : SELECT 칼럼 FROM 테이블1 INNER JOIN 테이블2 ON 테이블1.칼럼=테이블2.칼럼;

외부 조인 : SELECT 칼럼 FROM 테이블1 LEFT JOIN 테이블2 ON 테이블1.칼럼=테이블2.칼럼;
            SELECT 칼럼 FROM 테이블1 RIGHT JOIN 테이블2 ON 테이블1.칼럼=테이블2.칼럼;
            
################################################
#실습하기 5-11   내부조인                                  select*from `sales`;
#                                                          select*from `member`;
SELECT*FROM `Sales` INNER JOIN `Member` ON Sales.uid = Member.uid; 

SELECT Sales.`seq`, Sales.`year`, Sales.`month`, Sales.`uid`,   `name`, `pos`, `sale` FROM  Sales JOIN  Member ON Sales.uid = Member.uid;

SELECT a.`seq`, a.`uid`, `sale`, `name`, `pos` 
FROM  `Sales` AS a
JOIN `Member` AS b
ON a.`uid` = b.`uid`;

SELECT a.`seq`, a.`uid`, `sale`, `name`, `pos` 
FROM  `Sales` AS a
JOIN `Member` AS b
USING (uid);

SELECT a.`seq`, a.`uid`, `sale`, `name`, `pos` 
FROM  `Sales` AS a
JOIN `Member` AS b
WHERE a.uid = b.`uid;

SELECT a.`seq`, a.`uid`, `sale`, `name`, `pos` 
FROM  `Sales` AS a
JOIN `Member` AS b
WHERE `sale` >= 100000;

SELECT a.`seq`, a.`uid`, b.`name`, b.`pos`, `year`, SUM(`sale`) AS `합계` 
FROM  `Sales` AS a
JOIN `Member` AS b
ON a.`uid` = b.`uid`
GROUP BY a.`uid`, a.`year`
HAVING `합계` >= 100000
ORDER BY a.`year` ASC, `합계` DESC;

SELECT*FROM `Sales` AS a
JOIN `Member`     AS b ON a.uid = b.uid
JOIN `Department` AS c ON b.dep = c.depNo;


SELECT a.`seq`, a.`uid`, a.`sale`, b.`name`, b.`pos`, c.`name`
FROM  `Sales`     AS a
JOIN `Member`     AS b  USING(uid)
JOIN `Department` AS c  ON b.dep = c.depNo;


SELECT a.`seq`, a.`uid`, a.`sale`, b.`name`, b.`pos`, c.`name`
FROM  `Sales` AS a
JOIN `Member`     AS b  USING(uid)
JOIN `Department` AS c  ON b.dep = c.depNo
WHERE `sale` > 100000 ORDER BY `sale` DESC;



############################
# 수업시간 설명
SELECT*FROM `Sales` JOIN `Member` ON `Sales`.uid = `Member`.uid;

SELECT a.seq, a.uid, a.year, a.month, a.sale, b.name, b.hp, b.pos		
FROM `Sales`  AS a
JOIN `Member` AS b
ON a.uid = b.uid;


SELECT * FROM `Sales`  AS a
JOIN          `Member` AS b
USING(`uid`);


SELECT * FROM   `Sales`   AS a
JOIN           `Member`   AS b  ON a.uid = b.uid
JOIN         `Department` AS c  ON b.dep = c.depNo;
############################################



#실습하기 5-12    외부조인

SELECT*FROM `Sales`  LEFT JOIN `Member` ON `Sales`.uid = `Member`.uid;

SELECT*FROM `Sales` RIGHT JOIN `Member` ON `Sales`.uid = `Member`.uid;


SELECT a.seq, a.uid, `sale`, `name`, `pos`
FROM sales AS a
LEFT JOIN  member AS b USING(uid);

SELECT a.seq, a.uid, `sale`, `name`, `pos`
FROM sales AS a
RIGHT JOIN member AS b USING(uid);


	
#########################
수업시간 설명
SELECT * FROM `sales` AS a
FROM `sales` AS a
JOIN `member` AS b
ON a.uid = b.uid;
####################








#확인문제1   모든 직원의 아이디, 이름, 직급, 부서명을 조회하시오. 




#확인문제2   김유신 직원의 2019년도 매출 합을 조회하시오   
SELECT a.uid, b.name, a.year, SUM(`sale`) AS `합계`
FROM `Sales` AS a
JOIN `Member` AS b
ON a.uid = b.uid
WHERE
	b.name =
	
	
# 확인문제3   2019년 50,000이상의 매출에 대해 직원별 매출의 합이 100,000원 이상인 직원의 이름, 부서명, 직급, 년도, 매출 합을 조회하시오. 
#             단, 매출 합이 큰 순서부터 정렬


