# 날 짜 : 0000/00/00
# 이 름 : 최희원
# 내 용 : 교재 5장 집계와 서브쿼리



#20강 행 개수 구하기
COUNT
SUM
AVG
MIN
MAX

#테이블 생성/데이터 저장
CREATE TABLE `sample51` ();

#p183
SELECT*FROM sample51;
SELECT COUNT(*)FROM sample51;

#p185
SELECT*FROM sample51 WHERE NAME='A';
SELECT COUNT(*)FROM sample51 WHERE NAME='A';

#p186
SELECT*FROM sample51;
SELECT COUNT(NO),COUNT(NAME) FROM sample51;

#p187
SELECT*FROM sample51;

#p188
SELECT ALL NAME FROM sample51;

SELECT DISTINCT NAME FROM sample51;

#p189
SELECT COUNT(ALL NAME), COUNT(DISTINCT NAME) FROM sample51;


#21강 COUNT 이외의 집계함수
SUM([ALL|DISTINCT])
#p191
SELECT*FROM sample51;

SELECT SUM(quantity) FROM sample51;

#p192


#p193


#22강 그룹화-GROUP BY

#p195

#p197

#p199

#p202



#23강 서브쿼리

#테이블 생성/데이터 저장
CREATE TABLE `sample54` ();

#p205

#p206

#p207

#p208

#p210

#p211

#p212

#p213


#테이블 생성/데이터 저장
CREATE TABLE `sample541` ();

#p214

#p215


#24강 상관 서브쿼리

#테이블 생성/데이터 저장
CREATE TABLE `sample551` ();

CREATE TABLE `sample552` ();

#p217

#p218

#p219

#p221

#p222