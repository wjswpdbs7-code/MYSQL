# SQL 기본기

이 문서는 `memo.sql`에 정리된 내용을 바탕으로 MySQL SQL 기초를 한눈에 볼 수 있게 정리한 자료입니다.

## 1. SQL의 역할

SQL은 데이터베이스에서 원하는 데이터를 조회하거나 조작하기 위해 사용하는 언어입니다. 일반적인 프로그래밍 언어의 함수처럼, 필요한 작업을 명령문 형태로 작성합니다.

SQL은 보통 다음과 같이 나눠서 이해할 수 있습니다.

- 정의어: `CREATE`, `ALTER`, `DROP`
- 조작어: `SELECT`, `INSERT`, `UPDATE`, `DELETE`
- 제어어: `GRANT`, `REVOKE`, 그리고 제약 조건 `NOT NULL`, `PRIMARY KEY`, `FOREIGN KEY` 등

## 2. 데이터베이스와 테이블

데이터베이스는 관련된 데이터를 저장하는 논리적인 컨테이너입니다. 데이터베이스 안에는 여러 테이블이 들어갈 수 있고, 테이블은 행과 열로 구성됩니다.

### 데이터베이스 생성과 선택

```sql
CREATE DATABASE madang;
USE madang;
SHOW DATABASES;
SHOW TABLES;
```

### 테이블 구조 확인과 삭제

```sql
DESC 테이블명;
DROP TABLE 테이블명;
DROP DATABASE 데이터베이스명;
```

## 3. 자료형과 스키마

테이블을 만들 때는 각 열의 자료형을 정해야 합니다.

- `INT`: 정수
- `VARCHAR(n)`: 가변 길이 문자열
- `DATE`: 날짜

스키마는 데이터베이스의 구조를 정의한 청사진입니다. 테이블, 열, 자료형, 제약 조건, 관계를 포함합니다.

### 예시

```sql
CREATE TABLE students (
	id INT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	age INT,
	email VARCHAR(100)
);
```

## 4. 테이블 생성 예제

### Book 테이블

```sql
CREATE TABLE Book(
	bookid INTEGER PRIMARY KEY,
	bookname VARCHAR(40),
	publisher VARCHAR(40),
	price INTEGER
);
```

### Customer 테이블

```sql
CREATE TABLE Customer(
	custid INTEGER PRIMARY KEY,
	name VARCHAR(40),
	address VARCHAR(40),
	phone VARCHAR(40)
);
```

전화번호는 앞에 0이 붙을 수 있으므로 `INT`보다 `VARCHAR`가 적합합니다.

### Orders 테이블

```sql
CREATE TABLE Orders(
	orderid INTEGER PRIMARY KEY,
	custid INTEGER,
	bookid INTEGER,
	saleprice INTEGER,
	orderdate DATE,
	FOREIGN KEY (custid) REFERENCES Customer(custid),
	FOREIGN KEY (bookid) REFERENCES Book(bookid)
);
```

`FOREIGN KEY`는 다른 테이블의 기본 키를 참조하여 테이블 간 관계를 만듭니다.

## 5. 데이터 삽입

테이블에 데이터를 넣을 때는 `INSERT INTO`를 사용합니다. 열의 순서와 값의 순서가 일치해야 합니다. 값을 생략하면 `NULL`이 들어갑니다.

```sql
INSERT INTO Book VALUES(1, '축구의 역사', '굿스포츠', 7000);
INSERT INTO Book VALUES(2, '축구 아는 여자', '나무수', 13000);
INSERT INTO Book VALUES(3, '축구의 이해', '대한미디어', 22000);
INSERT INTO Book VALUES(4, '골프 바이블', '대한미디어', 35000);
INSERT INTO Book VALUES(5, '피겨 교본', '굿스포츠', 8000);
INSERT INTO Book VALUES(6, '배구 단계별기술', '굿스포츠', 6000);
INSERT INTO Book VALUES(7, '야구의 추억', '이상미디어', 20000);
INSERT INTO Book VALUES(8, '야구를 부탁해', '이상미디어', 13000);
INSERT INTO Book VALUES(9, '올림픽 이야기', '삼성당', 7500);
INSERT INTO Book VALUES(10, 'Olympic Champions', 'Person', 13000);
```

```sql
INSERT INTO Customer VALUES(1, '박지성', '영국 맨체스터', '000-5000-0001');
INSERT INTO Customer VALUES(2, '김연아', '대한민국 서울', '000-6000-0001');
INSERT INTO Customer VALUES(3, '김연경', '대한민국 경기도', '000-7000-0001');
INSERT INTO Customer VALUES(4, '추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO Customer VALUES(5, '박세리', '대한민국 대전', NULL);
```

날짜는 문자열을 날짜로 바꿔주는 `STR_TO_DATE()`를 사용할 수 있습니다.

```sql
INSERT INTO Orders VALUES(1, 1, 1, 6000, STR_TO_DATE('2014-07-01', '%Y-%m-%d'));
```

## 6. SELECT 기본

`SELECT`는 데이터를 조회할 때 사용합니다.

```sql
SELECT bookname, price FROM Book;
SELECT * FROM Book;
SELECT DISTINCT publisher FROM Book;
```

- `*`는 모든 열을 의미합니다.
- `DISTINCT`는 중복을 제거합니다.

## 7. WHERE 절

`WHERE`는 행을 조건으로 필터링합니다.

```sql
SELECT * FROM Book WHERE price > 10000;
SELECT * FROM Book WHERE publisher = '굿스포츠';
SELECT * FROM Book WHERE publisher LIKE '%미디어%';
```

여러 조건은 `AND`, `OR`로 연결할 수 있습니다.

```sql
SELECT * FROM Book WHERE price > 10000 AND publisher = '대한미디어';
SELECT * FROM Book WHERE 20000 < price AND price < 30000;
```

## 8. LIKE 와 와일드카드

문자 패턴을 검색할 때는 `LIKE`를 사용합니다.

- `%`: 0개 이상의 문자와 일치
- `_`: 정확히 1개의 문자와 일치

예시:

```sql
SELECT * FROM Book WHERE bookname LIKE '축구%';
SELECT * FROM Book WHERE bookname LIKE '%축구%';
```

와일드카드 검색은 범용적이지만, 인덱스를 잘 활용하지 못할 수 있어 속도가 느려질 수 있습니다.

## 9. ORDER BY

결과를 정렬할 때 사용합니다. 기본은 오름차순이며, `DESC`를 붙이면 내림차순입니다.

```sql
SELECT * FROM Book ORDER BY price;
SELECT * FROM Book ORDER BY price DESC;
```

## 10. AS 별칭

열 이름이나 계산 결과에 별칭을 붙일 수 있습니다.

```sql
SELECT SUM(saleprice) * 0.01 + 2 AS 총매출 FROM Orders;
SELECT SUM(saleprice) * 0.01 + 2 AS '총 매출' FROM Orders;
```

별칭에 공백이 들어가면 작은따옴표로 감싸서 사용할 수 있습니다.

## 11. 집계 함수와 GROUP BY, HAVING

집계 함수는 여러 행을 하나의 값으로 요약합니다.

- `SUM()`
- `COUNT()`
- `AVG()`
- `MAX()`
- `MIN()`

예시:

```sql
SELECT SUM(saleprice) AS '2번 고객 총매출'
FROM Orders
WHERE custid = 2;
```

그룹별 집계는 `GROUP BY`를 사용합니다. `HAVING`은 그룹화된 결과에 조건을 적용합니다.

```sql
SELECT custid, COUNT(*)
FROM Orders
WHERE saleprice >= 8000
GROUP BY custid
HAVING COUNT(*) >= 2;
```

`WHERE`는 그룹화 전에 행을 필터링하고, `HAVING`은 그룹화 후의 결과를 필터링합니다.

## 12. JOIN

`JOIN`은 두 개 이상의 테이블을 연결해 관련 데이터를 조회할 때 사용합니다.

### 카테시안 곱 예시

```sql
SELECT * FROM Customer, Orders;
```

이 쿼리는 모든 조합을 만들어 결과가 매우 커질 수 있습니다.

### 조건을 걸어 연결하기

```sql
SELECT * FROM Customer, Orders
WHERE Customer.custid = Orders.custid;
```

### 필요한 열만 조회하기

```sql
SELECT name, saleprice
FROM Customer, Orders
WHERE Customer.custid = Orders.custid;
```

## 13. 자주 쓰는 정리

- 데이터베이스 만들기: `CREATE DATABASE 데이터베이스명`
- 데이터베이스 선택: `USE 데이터베이스명`
- 테이블 만들기: `CREATE TABLE 테이블명 (열명 자료형, ...);`
- 데이터 넣기: `INSERT INTO 테이블명 VALUES(...);`
- 데이터 조회: `SELECT 열명 FROM 테이블명;`
- 조건 필터링: `WHERE 조건`
- 정렬: `ORDER BY 열명 [ASC|DESC]`
- 그룹 요약: `GROUP BY 열명`, `HAVING 조건`
- 테이블 연결: `JOIN ON 조건`

