# 날 짜 : 2022/06/15
# 이 름 : 최희원
# 내 용 : 교재 3장 정렬과 연산





#테이블 생성/데이터 저장
CREATE TABLE `sample31` ();



#p95
SELECT*FROM sample31;
SELECT*FROM sample31 ORDER BY age;
#p96
SELECT*FROM sample31 ORDER BY address;
#p98
SELECT*FROM sample31 ORDER BY age DESC;
SELECT*FROM sample31 ORDER BY age ASC;






#테이블 생성/데이터 저장
CREATE TABLE `sample311` ();




#p100
SELECT*FROM sample311 ORDER BY a;









#테이블 생성/데이터 저장
CREATE TABLE `sample32` ();



#p103
SELECT*FROM sample32;
#p104
SELECT*FROM sample32 ORDER BY a; 
#p105
SELECT*FROM sample32 ORDER BY a,b; 
SELECT*FROM sample32 ORDER BY b,a; 
#p106
SELECT*FROM sample32 ORDER BY a ASC, b DESC; 


#테이블 생성/데이터 저장
CREATE TABLE `sample33` ();


#p109
SELECT*FROM sample33;
#p110
SELECT*FROM sample33 LIMIT 3;
#p111
SELECT*FROM sample33 ORDER BY NO DESC LIMIT 3;
#p113
SELECT*FROM sample33 LIMIT 3 OFFSET 0;
SELECT*FROM sample33 LIMIT 3 OFFSET 3;


#테이블 생성/데이터 저장
CREATE TABLE `sample34` ();



#p117
SELECT*FROM sample34;
#p118
SELECT*,price*quantity FROM sample34;
SELECT*,price*quantity AS amount FROM sample34;
#p121
SELECT*,price*quantity AS amount FROM sample34 WHERE price*quantity >=2000;
SELECT*,price*quantity AS amount FROM sample34 WHERE amount >=2000;
#p124
SELECT*,price*quantity AS amount FROM sample34 ORDER BY price*quantity DESC;
#p125
SELECT*,price*quantity AS amount FROM sample34 ORDER BY amount DESC;




#테이블 생성/데이터 저장
CREATE TABLE `sample341` ();



#p127
SELECT*FROM sample341;
SELECT amount, ROUND(amount) FROM sample341;
#p128
SELECT amount, ROUND(amount,1) FROM sample341;
#p129
SELECT amount, ROUND(amount,-2) FROM sample341;




#테이블 생성/데이터 저장
CREATE TABLE `sample35` ();



#p132
SELECT*FROM sample35;
#p137
SELECT CONCAT(quantity,unit) FROM sample35;
#p139
SELECT CURRENT_DATE + INTERVAL 1 DAY;


#테이블 생성/데이터 저장
CREATE TABLE `sample37` ();



#p142
SELECT*FROM sample37;
#p144
SELECT a, case when a IS NULL then 0 ELSE a END "a(null=0)" FROM sample37;
SELECT a, COALESCE(a,0) FROM sample37;
#p145
SELECT a AS "코드",
case when a = 1 then '남자'
     when a = 2 then '여자'
     ELSE '미지정'
END AS "성별" FROM sample37;


SELECT a AS "코드",
case a when 1 then '남자'
       when 2 then '여자'
      ELSE '미지정'
END AS "성별" FROM sample37;

#p147
case a when 1 then '남자'
       when 2 then '여자'
       when NULL then '데이터 없음'
       ELSE '미지정'
END 


case when a=1 then '남자'
     when a=2 then '여자'
     when a IS NULL then '데이터 없음'
     ELSE '미지정'
END 
