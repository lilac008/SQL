# 날 짜 : 2022/06/14
# 이 름 : 최희원
# 내 용 : 데이터베이스 관리


########################################
1. DB관리

관리자 생성  : CREATE USER '사용자명'@'%' IDENTIFIED BY '비밀번호';
권한 부여    : GRANT ALL PRIVILEGES ON DB명.* TO '사용자명'@'%';
변경사항적용 : FLUSH PRIVILEGES;  

% : 모든 외부 IP 접속 허용
* : 모든

DROP DATABASE `testdb`;
########################################
# 실습하기 3-1
CREATE DATABASE `testDB`;

CREATE USER 'tester'@'%' IDENTIFIED BY '1q2w3e';
GRANT ALL PRIVILEGES ON testdb.* TO 'tester'@'%'; 
FLUSH PRIVILEGES;



########################################
2. DB관리

비밀번호변경 : SET PASSWORD FOR '사용자명'@'%'=PASSWORD('새비밀번호');
게정삭제     : DROP USER '사용자명'@'%'; (경고 : 선택실행 금지!!!!)

% : 모든 외부 IP 접속 허용
* : 모든

DROP DATABASE `testdb`;
########################################
# 실습하기 3-2
SET PASSWORD FOR 'tester'@'%'=PASSWORD('1q2w3e');
FLUSH PRIVILEGES;



########################################
3. DB 백업/복원
덤프파일 생성 : mysqldump -u 아이디 -p  DB명 >  DB명.sql
덤프파일 복원 : mysql -u 아이디 -p  DB명 <  DB명.sql
########################################
#실습하기 3-3 
마리아db - command prompt - 관리자 모드 

# cd /
# mysql -u root -p
# Enter PASSWORD : 
# show databases;
# mysqldump -u root -p  mydb >  mydb.sql
# mysql -u root -p  mydb <  mydb.sql