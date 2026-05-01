create table studen(
    id int,
    name varchar(10)
);

create table apply(
    id int,
    syu_name varchar(10),
    class_name varchar(10)
);

================================기본 명령어, 데이터 베이스 생성====================================

create database iot;//데이터베이스 생성[]

show databases;--//데이터베이스 목록 보기
show tables;--//테이블 목록 보기
desc 테이블명; --//테이블 구조 보기
drop table 테이블명; --//테이블 삭제
테이블 생성 
drop database 데이터베이스명;-- //데이터베이스 삭제 
select * from 테이블명;-- //테이블의 모든 데이터 보기


sql 에서 정의어 조작어 제어어의 구조

create table students (
    id int,
    name varchar(10)
);
정의어: create table students
조작어: id int, name varchar(10)
제어어: 없음

제어어에는 예시로 NOT NULL, PRIMARY KEY, FOREIGN KEY 등이 있습니다.





// 자료형 선언을 varchar는 문자열을 저장하는 데 사용되고, int는 정수를 저장하는 데 사용됩니다.
// c언어에서는 int id 이런식으로 하는데 mysql에서는 id int 이런식으로 선언합니다. 
varchar는 char(10)과 같은 고정 길이 문자열과 달리 가변 길이 문자열을 저장할 수 있습니다.
//스키마란 데이터베이스의 구조를 정의하는 청사진입니다. 스키마는 테이블, 열, 데이터 유형, 제약 조건 및 관계와 같은 데이터베이스의 구성 요소를 설명합니다. 
스키마의 예시
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL, //NOT NULL은 해당 열이 NULL 값을 허용하지 않도록 하는 제약 조건입니다. 즉, 이 열에는 반드시 값이 있어야 합니다.
    age INT,
    email VARCHAR(100)
);

-- 데이터베이스 생성
-- 데이터베이스는 관련된 데이터를 저장하는 논리적인 컨테이너입니다. 데이터베이스는 여러 테이블로 구성될 수 있으며, 각 테이블은 특정 유형의 데이터를 저장합니다. 데이터베이스를 생성하려면 다음과 같은 SQL 명령을 사용할 수 있습니다.
create database madang;
using madang;
show databases;--


-==============================================테이블 생성=======================================

create table new_book2(
    bookid integer, 
    bookname varchar(40), 
    publisher varchar(40),
    price integer 
);


create table Customer(
    custid integer primary key, 
    name varchar(40), 
    address varchar(40),
    phone varchar(40)
);

--//phone은 int로 하면 0으로 시작하는 번호는 0이 사라지기 때문에 varchar로 선언하는 것이 좋습니다. 
create table orders(
    orderid integer primary key, 
    custid integer, 
    bookid integer, 
    saleprice integer,
    orderdate date,
    foreign key (custid) references Customer(custid) ON DELETE CASCADE,
    foreign key (bookid) references Book(bookid) ON DELETE CASCADE
); 
--on delete cascade; //참조된 행이 삭제될 때 참조하는 행도 함께 삭제하는 옵션입니다. 예를 들어, Customer 테이블에서 고객이 삭제되면 해당 고객이 주문한 주문도 함께 삭제됩니다.



-- date는 날짜 저장할때 자료형
-- foreign key (custid) references Customer(custid), Orders에 있는 custid는 Customer테이블에 있는 custid를 가져온것


=================================================drop 하기=========================================
-- drop table 테이블명; //테이블 삭제
-- drop database 데이터베이스명; //데이터베이스 삭제

foreign key 제약 조건이 있는 테이블을 삭제하려면 먼저 해당 제약 조건을 제거해야 합니다. 예를 들어, Orders 테이블에서 foreign key 제약 조건을 제거하려면 다음과 같은 SQL 명령을 사용할 수 있습니다.
ALTER TABLE Orders
DROP FOREIGN KEY fk_custid; -- fk_custid는 Orders 테이블에서 custid 열에 설정된 foreign key 제약 조건의 이름입니다. 실제 제약 조건 이름은 데이터베이스에서 확인해야 합니다.
ALTER TABLE Orders
DROP FOREIGN KEY fk_bookid; -- fk_bookid는 Orders 테이블에서 bookid 열에 설정된 foreign key 제약 조건의 이름입니다. 실제 제약 조건 이름은 데이터베이스에서 확인해야 합니다.

orders 테이블은 그냥 지울 수 있지만, foreign key 제약 조건이 있는 테이블을 삭제하려면 먼저 해당 제약 조건을 제거해야 합니다.

================================================데이터 삽입하기======================================

-- insert into 테이블명 values(값1, 값2, ...); //테이블에 데이터 삽입.
-- 삽입시 순서는 테이블 생성시 열의 순서와 일치해야 합니다.
-- 만약 비어둔 경우에는 NULL로 입력됩니다.


insert into Book values(1, '축구의 역사', '굿스포츠', 7000);
insert into Book values(2, '축구 아는 여자', '나무수', 13000);
insert into Book values(3, '축구의 이해', '대한미디어', 22000);
insert into Book values(4, '골프 바이블', '대한미디어', 35000);
insert into Book values(5, '피겨 교본', '굿스포츠', 8000);
insert into Book values(6, '배구 단계별기술', '굿스포츠', 6000);
insert into Book values(7, '야구의 추억', '이상미디어', 20000);
insert into Book values(8, '야구를 부탁해', '이상미디어', 13000);
insert into Book values(9, '올림픽 이야기', '삼성당', 7500);
insert into Book values(10, 'Olympic Champions', 'Person', 13000);

insert into Book (bookid, bookname, publisher)
values(15, '스포츠 의학2', '고려대학교'),
(16, '스포츠 의학3', '고려대학교');


--데이터만 삭제하기
-- delete from 테이블명; //테이블의 모든 데이터 삭제 

-- Customer 테이블에 데이터 삽입

insert into Customer values(1, '박지성', '영국 맨체스터', '000-5000-0001');
insert into Customer values(2, '김연아', '대한민국 서울', '000-6000-0001');
insert into Customer values(3, '김연경', '대한민국 경기도', '000-7000-0001');
insert into Customer values(4, '추신수', '미국 클리블랜드', '000-8000-0001');
insert into Customer values(5, '박세리', '대한민국 대전', NULL);


-- Orders 테이블에 데이터 삽입
insert into Orders values(1, 1, 1, 6000, STR_TO_DATE('2014-07-01', '%Y-%m-%d'));
insert into Orders values(2, 1, 3, 21000, STR_TO_DATE('2014-07-03', '%Y-%m-%d'));
insert into Orders values(3, 2, 5, 8000, STR_TO_DATE('2014-07-03', '%Y-%m-%d'));
insert into Orders values(4, 3, 6, 6000, STR_TO_DATE('2014-07-04', '%Y-%m-%d'));
insert into Orders values(5, 4, 7, 20000, STR_TO_DATE('2014-07-05', '%Y-%m-%d'));
insert into Orders values(6, 1, 2, 12000, STR_TO_DATE('2014-07-07', '%Y-%m-%d'));
insert into Orders values(7, 4, 8, 13000, STR_TO_DATE('2014-07-07', '%Y-%m-%d'));
insert into Orders values(8, 3, 10, 12000, STR_TO_DATE('2014-07-08', '%Y-%m-%d'));
insert into Orders values(9, 2, 10, 7000, STR_TO_DATE('2014-07-09', '%Y-%m-%d'));
insert into Orders values(10, 3, 8, 13000, STR_TO_DATE('2014-07-10', '%Y-%m-%d'));
STR_TO_DATE는 문자열을 날짜로 변환하는 함수입니다. '2014-07-01'이라는 문자열을 '%Y-%m-%d' 형식으로 해석하여 날짜로 변환합니다.

=============================================== alter 문 ========================================

alter 는 테이블의 구조를 변경하는 데 사용되는 SQL 명령입니다. alter 문을 사용하여 테이블에 열을 추가하거나 삭제하거나 데이터 타입을 변경할 수 있습니다.


alter table 테이블명 add 열이름 데이터타입; --테이블에 열 추가
alter table 테이블명 drop 열이름; --테이블에서 열 삭제
alter table 테이블명 modify 열이름 데이터타입; --테이블에서 열의 데이터 타입 변경
alter table 테이블명 change 기존열이름 새로운열이름 데이터타입; --테이블에서 열의 이름과 데이터 타입 변경
alter table 테이블명 modify 열이름 데이터 타입 not null; --테이블에서 열의 데이터 타입을 변경하고, NOT NULL 제약 조건을 추가하는 SQL 쿼리입니다. NOT NULL 제약 조건은 해당 열이 NULL 값을 허용하지 않도록 하는 제약 조건입니다. 즉, 이 열에는 반드시 값이 있어야 합니다.



-----------------예시
alter table new_book add isbn varchar(13); -- new_book 테이블에 isbn 열을 추가하는 SQL 쿼리입니다. 

alter table new_book modify isbn integer; -- new_book 테이블에서 isbn 열의 데이터 타입을 integer로 변경하는 SQL 쿼리입니다.

alter table new_book drop column isbn; -- new_book 테이블에서 isbn 열을 삭제하는 SQL 쿼리입니다.  clomn의 뜻은 열을 의미하는 키워드로 생략 가능하지만 명확하게 하기 위해 사용됩니다.

alter table new_book modify isbn integer not null; -- new_book 테이블에서 isbn 열의 데이터 타입을 integer로 변경하고, NOT NULL 제약 조건을 추가하는 SQL 쿼리입니다. NOT NULL 제약 조건은 해당 열이 NULL 값을 허용하지 않도록 하는 제약 조건입니다. 즉, 이 열에는 반드시 값이 있어야 합니다.

alter table new_book2 add primary key (bookid); -- new_book2 테이블의 bookid 열을 기본 키로 설정하는 SQL 쿼리입니다. 기본 키는 테이블에서 각 행을 고유하게 식별하는 데 사용되는 열입니다. bookid 열이 이미 기본 키로 선언되어 있기 때문에 이 쿼리는 오류를 발생시킬 수 있습니다. 이미 기본 키가 선언된 경우에는 이 쿼리를 실행할 필요가 없습니다.
===============================================데이터 update하기======================================

기본
update 테이블명 
set 열1 = 값1, 열2 = 값2, ... 
where 조건;

update Customer
set address = '대한민국 부산'
--여기까지만 쓰면 Customer 테이블의 모든 행의 address 열이 '대한민국 부산'으로 업데이트됩니다. 


update Customer
set address = '대한민국 부산'
where custid = 5;
--행번호 지정으로 업데이트하기
-- name이나 phone을 조건으로 업데이트 하는것도 가능합니다.

문제 !!
박세리 주소를 세종으로 단 custid 쓰기

1.
select custid from customer where name = '박세리'
res = sql_execute()

2.
update Customer
set address = '대한민국 세종'
where custid = (res);
sql_execute()


==============================================데이터delete하기=====================================

delete from 삭제할 열이 포함된 테이블명
where 조건;

delete from book
where bookid > 10;
-- bookid가 10보다 큰 행을 삭제하는 SQL 쿼리입니다.


==================================================view==============================================
view는 하나 이상의 테이블에서 데이터를 조회하는 가상의 테이블입니다. 
가상의 테이블을 만드는 이유는 복잡한 쿼리를 단순화하고, 보안을 강화하며, 데이터의 일관성을 유지하기 위해서입니다. 뷰는 실제로 데이터를 저장하지 않고, 뷰를 정의하는 쿼리를 실행할 때마다 데이터를 동적으로 생성합니다. 뷰를 수정하려면  

create view 뷰이름 as select문; //뷰 생성

create view v_orders as
select orderid, o.custid, name, b.bookid, bookname
from customer c, orders o, book b
where c.custid = o.custid and o.bookid = b.bookid;
-- v_orders라는 뷰를 생성하는 쿼리
--해당 쿼리를 실행하면 v_orders 뷰가 생성되고, 이 뷰는 customer 테이블, orders 테이블, book 테이블을 조인하여 orderid, custid, name, bookid, bookname 열을 포함하는 결과 집합을 반환합니다.
--이때 정렬 조건이 없으므로 결과는 기본적으로 테이블에 저장된 순서대로 반환됩니다.


select * from v_orders; -- v_orders 뷰에서 모든 열과 모든 데이터를 조회하는 쿼리

===================================================쿼리===============================================

쿼리란 데이터베이스에서 원하는 데이터를 조회하거나 조작하기 위해 작성하는 명령문 즉 다른언어에서의 함수와 같은 역할을 하는 것입니다.  

=================================================select문===============================================
select 는 데이터베이스에서 데이터를 조회하는 데 사용
select 뒤에는 조회하려는 열 이름이나 *를 사용할 수 있습니다. *는 모든 열을 의미합니다.


select bookname, price from Book; //Book 테이블에서 bookname과 price 열의 데이터를 조회하는 SQL 쿼리입니다.
select * from Book; //Book 테이블의 모든 열과 모든 데이터를 조회하는 SQL 쿼리입니다.
select distinct publisher from Book; //Book 테이블에서 publisher 열의 고유한 값을 조회하는 SQL 쿼리입니다. 중복된 출판사는 한 번만 표시됩니다.

============================================== where절=============================================

where절은 행을 필터링하는 데 사용됩니다. 
예를들어 select * from Book where price > 10000; //Book 테이블에서 price 열의 값이 10000보다 큰 행을 조회하는 SQL 쿼리입니다.
select * from Book where publisher = '굿스포츠'; //Book 테이블에서 publisher 열의 값이 '굿스포츠'인 행을 조회하는 SQL 쿼리입니다.
select * from Book where publisher like '%미디어%'; //Book 테이블에서 publisher 열의 값에 '미디어'라는 단어가 포함된 행을 조회하는 SQL 쿼리입니다. '%'는 와일드카드로, '미디어' 앞뒤에 어떤 문자열이 와도 상관없음을 나타냅니다.

2개 이상의 조건을 결합할 때는 AND 또는 OR 연산자를 사용할 수 있습니다.
select * from Book where price > 10000 and publisher = '대한미디어';
select * from Book where 20000 < price and price < 30000; //price가 20000보다 크고 30000보다 작은 행을 조회하는 SQL 쿼리입니다.

select뒤에는 열 이름이나 *를 사용할 수 있습니다. *는 모든 열을 의미합니다.

와일드 카드 문자 //

    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        속도가 느릴 수 있기 때문에 주의해서 사용해야 합니다. 되도록 인덱스가 걸린 열에서 사용하지 않는 것이 좋습니다.
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

%: 0개 이상의 문자와 일치
_: 정확히 1개의 문자와 일치
select * from Book where bookname like '축구'; 
//Book 테이블에서 bookname 열의 값이 '축구'로 시작하는 행을 조회하는 SQL 쿼리입니다. '%'는 '축구' 뒤에 어떤 문자열이 와도 상관없음을 나타냅니다.
select * from Book where bookname like '%축구%'
Book 테이블에서 bookname 열의 값에 '축구'라는 단어가 포함된 행을 조회하는 SQL 쿼리입니다. '%'는 '축구' 앞뒤에 어떤 문자열이 와도 상관없음을 나타냅니다.

와일드 카드 사용시에는 = 이 아니라 like 연산자를 사용해야 합니다.

order by 절은 결과를 정렬하는 데 사용됩니다.

select * from Book order by price;                                                                                                     
//Book 테이블의 모든 행을 price 열의 오름차순으로 정렬하여 조회하는 SQL 쿼리입니다.

select * from Book order by price desc; 
//Book 테이블의 모든 행을 price 열의 내림차순으로 정렬하여 조회하는 SQL 쿼리입니다. desc는 내림차순을 나타냅니다. 오름차순은 기본값이므로 생략할 수 있습니다.

as 키워드는 열 또는 테이블에 별칭을 지정하는 데 사용됩니다.

 select sum(saleprice) * 0.01 + 2 as 총매출 from orders;
--Orders 테이블에서 saleprice 열의 합계에 0.01을 곱하고 2를 더한 값을 '총매출'이라는 별칭으로 조회하는 SQL 쿼리입니다. 

 select sum(saleprice) * 0.01 + 2 as '총 매출' from orders;
--Orders 테이블에서 saleprice 열의 합계에 0.01을 곱하고 2를 더한 값을 '총 매출'이라는 별칭으로 조회하는 SQL 쿼리입니다. 별칭에 공백이 포함되어 있기 때문에 작은따옴표로 묶어주었습니다.   

2번 고객이 주문한 도서의 총 매출을 계산하는 쿼리
select sum(saleprice) as '2번 고객 총매출' from Orders where custid = 2;

select custid, count(*)
from orders where saleprice >= 8000
group by custid
having count(*) >= 2

--having 절은 그룹화된 결과에 조건을 적용하는 데 사용됩니다. 
--where 절과의 차이점은 where 절은 그룹화되기 전에 행을 필터링하는 반면, having 절은 그룹화된 결과에 조건을 적용한다는 것입니다.
--위 쿼리는 Orders 테이블에서 saleprice가 8000 이상인 주문을 custid별로 그룹화하여 각 custid에 대해 주문 수를 계산합니다. 그리고 주문 수가 2 이상인 custid와 그 주문 수를 조회하는 SQL 쿼리입니다.


join 절은 두 개 이상의 테이블을 연결하여 관련된 데이터를 조회하는 데 사용됩니다.

select * from customer, orders;
--Customer 테이블과 Orders 테이블을 조인하여 모든 열을 조회하는 SQL 쿼리입니다. 이 쿼리는 두 테이블의 모든 조합을 반환하므로 결과가 매우 클 수 있습니다.


select * from customer, orders
where customer.custid = orders.custid; 
-- Customer 테이블에 있는 custid는 Orders 테이블에 있는 custid와 일치하는 행을 조회하는 SQL 쿼리입니다. 이 쿼리는 두 테이블을 조인하여 관련된 데이터를 조회합니다.

select name, saleprice from customer, orders
where customer.custid = orders.custid; 
--Customer 테이블과 Orders 테이블을 조인하여 name 열과 saleprice 열을 조회하는 SQL 쿼리입니다. 


박지성의 구매 도서 목록 확인
select * from customer, orders
where customer.custid = orders.custid
and customer.name = '박지성';

select * from customer inner join orders
on customer.custid = orders.custid
where name = '박지성';

두개중 어떤 것을 사용해도 결과는 같습니다. 
가독성 측면에서는 inner join을 사용하는 것이 더 명확하게 조인의 의도를 나타내므로 일반적으로 권장됩니다.

3개 이상을 조인할 때는 다음과 같이 작성할 수 있습니다.

select name, bookname
from customer inner join orders on customer.custid = orders.custid
inner join book on orders.bookid = book.bookid
where name = '박지성';



select name, saleprice
from customer join orders
on customer.custid = orders.custid;
--  고객의 이름과 고객이 주문한 책의 가격을 조회하는 SQL 쿼리입니다.

-- 먼저 이름과 판매 가격을 조회할 열로 지정합니다. 
-- 그런 다음 customer 테이블과 orders 테이블을 조인합니다. 
-- 조인 조건은 customer 테이블의 custid 열과 orders 테이블의 custid 열이 일치하는 것입니다.

--from 뒤에는 테이블과 조인할 테이블을 작성하고 
-- on 뒤에는 조인할 때 일치하는 열을 작성하는 것이 일반적입니다.
-- 일치하는 열을 순서대로 작성하는 것이 일반적입니다.

select name, sum(saleprice)
from customer left join orders
on customer.custid = orders.custid
group by name;

-- 고객의 이름과 고객이 주문한 책의 총 가격을 조회하는 SQL 쿼리입니다.
-- 먼저 이름과 판매 가격의 합계를 조회할 열로 지정합니다.
-- 그런 다음 customer 테이블과 orders 테이블을 왼쪽 조인합니다. 
-- 여기서 왼쪽 조인한다는 뜻은 customer 테이블의 모든 행을 포함하고, orders 테이블에서 일치하는 행이 없는 경우에는 NULL로 표시된다는 것입니다. \

select bookname
from book 
where price = (select max(price) from book);
-- Book 테이블에서 price 열의 최대값과 일치하는 bookname 열의 값을 조회하는 SQL 쿼리입니다.



select name 
from customer 
where custid 
= (select custid from orders where bookid in
(select bookid from book where publisher='대한미디어'));
--대한 미디어 구매한 고객이름 조회


출판사 별로 출판사의 평균 평균 도서 가격보다 비싼 도서를 구하시오

select avg(price) from book b2 where b2.publisher = b1.publisher;

--========================================================================================================= 
김연아가 주문한 도서 총판매액

select sum(saleprice) as 총판매액
from orders where custid in
(select custid from Customer where name='김연아');



select sum(saleprice) as 총판매액
from orders join Customer on orders.custid = Customer.custid
where name = '김연아'
--===========================================================================================================================
정가! 20000원인 도서 주문한 고객의 이름과 도시이름

select name, address from Customer where custid in -- 의 이름과 도시이름
(select custid from orders where bookid in -- 를 주문한 고객
(select bookid from book where price = 20000)); --정가가 20000원인 도서 

select name, address
from Customer join orders join book --Customer, orders, book을 합치는데
on Customer.custid = orders.custid and orders.bookid = book.bookid --
where price = 20000;


select *
from Customer join orders join book 
on Customer.custid = orders.custid and orders.bookid = book.bookid 
where price = 20000;
--===========================================================================================================================
도서의 가격과 판매 가격 차이가 가장 많은 주문

select orderid as 주문번호, max(price - saleprice) as 차이
from orders where bookid in(
select bookid from book 
where max(price - saleprice ));

select orderid as 주문번호, max(price - saleprice) as 차이
from orders where bookid in(
select bookid from book 
where price = (select max(price) from book))


select orderid as 주문번호, max(price - saleprice) as 차이
from orders join book on orders.bookid = book.bookid 
where max(price - saleprice);


select orderid as 주문번호, max(price - saleprice) as 차이 
from orders join book on orders.bookid = book.bookid 

x
select orderid as 주문번호, price - saleprice as 차이 
from orders join book on orders.bookid = book.bookid  
where price-saleprice = (select max(price - saleprice) from book join orders on book.bookid = orders.bookid);

where price = (select max(price) from book);
--===========================================================================================================================
지금까지의 요약

where
사용법
select * from Book where price > 10000 and publisher = '대한미디어'; -- price가 10000보다 크고 publisher가 '대한미디어'인 행을 조회하는 SQL 쿼리입니다.
select * from Book where 20000 < price and price < 30000; -- price가 20000보다 크고 30000보다 작은 행을 조회하는 SQL 쿼리입니다.

join
사용법
select name, saleprice 
from customer, orders
where customer.custid = orders.custid; -- Customer 테이블과 Orders 테이블을 조인하여 name 열과 saleprice 열을 조회하는 SQL 쿼리입니다.
select * from customer inner join orders
on customer.custid = orders.custid
where name = '박지성'; -- Customer 테이블과 Orders 테이블을 조인하여 name 열과 saleprice 열을 조회하는 SQL 쿼리입니다. 이 쿼리는 두 테이블을 조인하여 관련된 데이터를 조회합니다. 그리고 name이 '박지성'인 행을 필터링합니다.
select name, bookname
from customer inner join orders on customer.custid = orders.custid
inner join book on orders.bookid = book.bookid
where name = '박지성'; -- Customer 테이블과 Orders 테이블을 조인하여 name 열과 bookname 열을 조회하는 SQL 쿼리입니다. 이 쿼리는 customer 테이블과 orders 테이블을 조인하여 관련된 데이터를 조회하고, 다시 orders 테이블과 book 테이블을 조인하여 bookname 열을 조회합니다. 그리고 name이 '박지성'인 행을 필터링합니다.

셀프조인 
사용법
select bookname
from book 
where price = (select max(price) from book); -- Book 테이블에서 price 열의 최대값과 일치하는 bookname 열의 값을 조회하는 SQL 쿼리입니다.

부속 질의 -- 
사용법
select bookname
from book 
where price = (select max(price) from book); -- Book 테이블에서 price 열의 최대값과 일치하는 bookname 열의 값을 조회하는 SQL 쿼리입니다.
select name 
from customer 
where custid
in (select distinct custid from orders); --Customer 테이블에서 custid가 Orders 테이블에 존재하는 고유한 custid 중 하나인 행의 name 열을 조회하는 SQL 쿼리입니다. 즉 Orders 테이블에 주문이 있는 고객의 이름을 조회하는 SQL 쿼리입니다.

in -- in 연산자는 특정 값이 하위 쿼리의 결과 집합에 존재하는지 여부를 확인하는 데 사용됩니다.
사용법
select name from Customer where custid in (select distinct custid from orders); --Customer 테이블에서 custid가 Orders 테이블에 존재하는 고유한 custid 중 하나인 행의 name 열을 조회하는 SQL 쿼리입니다. 즉 Orders 테이블에 주문이 있는 고객의 이름을 조회하는 SQL 쿼리입니다.

inner join -- inner join은 두 테이블에서 일치하는 행만 반환하는 조인 유형입니다. join이랑  같음
사용법
select name, saleprice from customer inner join orders on customer.custid = orders.custid; -- 고객의 이름과 고객이 주문한 책의 가격을 조회하는 SQL 쿼리입니다. 이 쿼리는 customer 테이블과 orders 테이블을 조인하여 관련된 데이터를 조회합니다. 조인 조건은 customer 테이블의 custid 열과 orders 테이블의 custid 열이 일치하는 것입니다.
-- .은 테이블의 열을 참조할 때 사용되는 구문입니다. 예를 들어 customer.custid는 customer 테이블의 custid 열을 참조하는 것입니다. 조인할 때 어떤 테이블의 열인지 명확하게 하기 위해 사용됩니다.

현재 까지의 학습 쿼리를 이용해 풀 수 있는 문제

--=======================================================================================================================

1. 대한 미디어에서 출판한 도서를 구매한 고객의 이름을 조회하는 쿼리를 작성하세요.

book에서 도서 조회하고 orders에서 구매조회 customer에서 이름조회
select name
from customer
where custid in(select distinct custid from orders where bookid in
(select distinct bookid from book where publisher = '대한미디어'))

select name
from customer join orders join book on
Customer.custid = orders.custid and orders.bookid = book.bookid
where publisher = '대한미디어'


--=======================================================================================================================

2. 8000원 이상인 책을 구매한 고객의 이름과 구매한 책의 이름을 조회하는 쿼리를 작성하세요.

select name bookname --where 조건에 맞는 열중에 name과 bookname만 
from customer inner join orders on customer.custid = orders.custid --custid로 customer, orders 연결
inner join book on orders.bookid = book.bookid --  거기에 bookid로 book이랑 orders 연결
where saleprice >= 8000; -- 이렇게 3개 연결한 테이블에서 saleprice 8000 이상인거를 고르기

--bookname, saleprice
-- 먼저 customer 테이블과 orders 테이블을 custid를 기준으로 조인하여 고객의 이름과 주문 정보를 연결합니다.
-- 그런 다음 orders 테이블과 book 테이블을 bookid를 기준으로 조인하여 주문한 책의 이름을 연결합니다.

--이러면 현재 연결된 테이블은 customer, orders, book 세 개의 테이블이 됩니다.

--2번째 줄에서 연결한 결과는 고객의 이름과 주문 정보가 포함된 결과 집합입니다. 여기서 3번째 줄을

--'연결한다'의 의미: 조인은 두 테이블에서 관련된 데이터를 결합하여 하나의 결과 집합으로 만드는 것을 의미합니다. 예를 들어, customer 테이블과 orders 테이블을 custid를 기준으로 조인하면 각 고객의 이름과 해당 고객이 주문한 책의 정보를 하나의 결과 집합으로 결합할 수 있습니다. 마찬가지로 orders 테이블과 book 테이블을 bookid를 기준으로 조인하면 주문한 책의 이름을 결과 집합에 포함시킬 수 있습니다.

-- 마지막으로 where 절을 사용하여 saleprice가 8000 이상인 행을 필터링하여 고객의 이름과 구매한 책의 이름을 조회합니다.



조회하려는 열은 name과 bookname입니다. 이는 customer 테이블의 name 열과 book 테이블의 bookname 열입니다.
조회하려는 테이블의 종류가 2개인 경우에는 customer 테이블과 orders 테이블을 조인하여 name 열과 saleprice 열을 조회할 수 있습니다.

--=======================================================================================================================

3. 각 고객이 구매한 책의 총 가격을 조회하는 쿼리를 작성하세요. 
select name, sum(saleprice) as 총가격
from orders join Customer on orders.custid = Customer.custid
group by Customer.custid;

높은 구매 액수 순으로
select name, sum(saleprice) as 총가격
from orders join Customer on orders.custid = Customer.custid
group by Customer.custid
order by 총가격 desc;

낮은 구매 액수 순으로
select name, sum(saleprice) as 총가격
from orders join Customer on orders.custid = Customer.custid
group by Customer.custid
order by 총가격 asc;

힌트 
group by 절을 사용


--=======================================================================================================================
4. 가장 비싼 책을 구매한 고객의 이름과 책의 이름을 조회하는 쿼리를 작성하세요.

select name, bookname
from book join Customer join orders
on book.bookid = orders.bookid and orders.custid = Customer.custid
where price = (select max(price) from book where bookid in (select bookid from orders));  

price가 35000인 책을 구매한 고객이 없기 때문에 결과가 나오지 않는 것입니다.
book.price가 아닌 그냥 price 로 하면 book 테이블의 price 열을 참조하는 것이 명확하기 때문에 price로 작성해도 됩니다.
--=======================================================================================================================
5. 2개 이상의 책을 구매한 고객의 이름과 구매한 책의 수를 조회하는 쿼리를 작성하세요.

select name, count(*) as 구매한 책 수
from orders join Customer 
on orders.custid = customer.custid 

--======================================================================================================
6. 2014년 7월 3일에 주문한 책의 이름과 고객의 이름을 조회하는 쿼리를 작성하세요.
 2014년 7월 3일에 주문한 책번호
select bookid
from orders 
where orderdate = '2014-07-03';
고객 번호
select custid
from Orders
where orderdate = '2014-07-03';
고객의 이름
select name
from Customer
where custid in (1, 2);
책의 이름
select bookname 
from book
where bookid in (3, 5);

select bookname, name
from book join customer join Orders
on book.bookid = orders.bookid and customer.custid = orders.custid
where orderdate in ('2014-07-03');

7. 2014년 7월 1일부터 2014년 7월 7일까지 주문한 책의 이름과 고객의 이름을 조회하는 쿼리를 작성하세요.

책이름 고객이름
select bookname, name 
from book join Customer join orders
on book.bookid = orders.bookid and customer.custid = orders.custid
where orderdate between '2014-07-01' and '2014-07-07';

--날짜를 조건으로 찾는 경우 between 절을 사용하여 특정 기간 동안의 데이터를 조회할 수 있습니다.

8. 각 고객이 구매한 책의 평균 가격을 조회하는 쿼리를 작성하세요.

select avg(saleprice)
from orders
group by orders.custid;

9. 가장 많은 책을 구매한 고객의 이름과 구매한 책의 수를 조회하는 쿼리를 작성하세요.



10. 각 고객이 구매한 책의 총 가격이 15000원 이상인 고객의 이름과 총 가격을 조회하는 쿼리를 작성하세요.



group by 를 사용해야하는 문제 

1. 각 고객이 구매한 책의 총 가격을 조회하는 쿼리를 작성하세요.

select name, sum(saleprice)
from book join Customer join orders
on book.bookid = orders.bookid and customer.custid = orders.custid 
group by orders.custid

2. 2개 이상의 책을 구매한 고객의 이름과 구매한 책의 수를 조회하는 쿼리를 작성하세요.

select name, count(*)
from book join Customer join orders
on book.bookid = orders.bookid and customer.custid = orders.custid
group by orders.custid
having count(*) >= 3;

3. 각 고객이 구매한 책의 평균 가격을 조회하는 쿼리를 작성하세요.

select name, avg(saleprice)
from book join Customer join orders
on book.bookid = orders.bookid and customer.custid = orders.custid
group by orders.custid;

4. 가장 많은 책을 구매한 고객의 이름과 구매한 책의 수를 조회하는 쿼리를 작성하세요.

select name, count(*)
from book join Customer join orders
on book.bookid = orders.bookid and customer.custid = orders.custid
group by orders.custid
having count(*) = max(count(*));

5. 각 고객이 구매한 책의 총 가격이 15000원 이상인 고객의 이름과 총 가격을 조회하는 쿼리를 작성하세요.

