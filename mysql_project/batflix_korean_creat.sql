
-- 데이터베이스 생성
create database batflix_k;


-- 데이터베이스 선택
use batflix_k;

-- 고객 테이블
create table `고객`(
	`고객_id` int PRIMARY KEY,
	`이름` varchar(20),
	`전화번호` varchar(20),
	`이메일` varchar(100),
	`주소` varchar(100)
);

-- 텃밭 테이블
create table `텃밭`(
	`텃밭_id` int PRIMARY KEY,
	`상태` varchar(20),
	`작물종류` varchar(20),
	`파종일` date,
	`예상수확일` date,
	`고객_id` int,
	foreign key (`고객_id`) references `고객`(`고객_id`) ON DELETE CASCADE
);

-- 온습도 센서 테이블
create table `온습도_센서`(
	`온습도_센서_id` int PRIMARY KEY,
	`텃밭_id` int,
	foreign key (`텃밭_id`) references `텃밭`(`텃밭_id`) ON DELETE CASCADE
);

create table `온습도_값`(
	`온습도_값_id` int PRIMARY KEY,
	`온습도_센서_id` int,
	`온도` decimal(5,2),
	`습도` decimal(5,2),
	`기록_시간` datetime,
	`센서_상태` varchar(40),
	foreign key (`온습도_센서_id`) references `온습도_센서`(`온습도_센서_id`) ON DELETE CASCADE
);

-- 조도 센서 테이블
create table `조도_센서`(
	`조도_센서_id` int PRIMARY KEY,
	`텃밭_id` int,
	foreign key (`텃밭_id`) references `텃밭`(`텃밭_id`) ON DELETE CASCADE 
);

create table `조도_값`(
	`조도_값_id` int PRIMARY KEY,
	`조도_센서_id` int, 
	`조도` decimal(10,2),
	`기록_시간` datetime,
	`센서_상태` varchar(40),
	foreign key (`조도_센서_id`) references `조도_센서`(`조도_센서_id`) ON DELETE CASCADE 
);

-- 토양 수분 센서 테이블
create table `토양_수분_센서`(
	`토양_수분_센서_id` int PRIMARY KEY,
	`텃밭_id` int,
	foreign key (`텃밭_id`) references `텃밭`(`텃밭_id`) ON DELETE CASCADE
);

create table `토양_수분_값`(
	`토양_수분_값_id` int PRIMARY KEY,
	`토양_수분_센서_id` int,
	`수분값` decimal(5,2),
	`기록_시간` datetime,
	`센서_상태` varchar(40),
	foreign key (`토양_수분_센서_id`) references `토양_수분_센서`(`토양_수분_센서_id`) ON DELETE CASCADE
);

-- 수위 센서 테이블
create table `수위_센서`(
	`수위_센서_id` int PRIMARY KEY,
	`텃밭_id` int,
	foreign key (`텃밭_id`) references `텃밭`(`텃밭_id`) ON DELETE CASCADE
);

create table `수위_값`(
	`수위_값_id` int PRIMARY KEY,
	`수위_센서_id` int,
	`수위값` decimal(5,2),
	`기록_시간` datetime,
	`비정상_플래그` varchar(40),
	foreign key (`수위_센서_id`) references `수위_센서`(`수위_센서_id`) ON DELETE CASCADE
);

-- 펌프 장치 및 이력
create table `펌프_장치`(
	`펌프_장치_id` int PRIMARY KEY,
	`텃밭_id` int,
	foreign key (`텃밭_id`) references `텃밭`(`텃밭_id`) ON DELETE CASCADE
);

create table `펌프_이력`(
	`펌프_이력_id` int PRIMARY KEY,
	`펌프_장치_id` int,
	`펌프_상태` boolean,
	`동작_시간` datetime,
	foreign key (`펌프_장치_id`) references `펌프_장치`(`펌프_장치_id`) ON DELETE CASCADE
);

-- 차광 장치 및 이력
create table `차광막_장치`(
	`차광막_장치_id` int PRIMARY KEY,
	`텃밭_id` int,
	foreign key (`텃밭_id`) references `텃밭`(`텃밭_id`) ON DELETE CASCADE
);

create table `차광막_이력`(
	`차광막_이력_id` int PRIMARY KEY,
	`차광막_장치_id` int,
	`차광막_상태` boolean,
	`동작_시간` datetime,
	foreign key (`차광막_장치_id`) references `차광막_장치`(`차광막_장치_id`) ON DELETE CASCADE
);

-- 메시지 테이블
create table `메시지`(
	`메시지_id` int PRIMARY KEY,
	`고객_id` int,
	`내용` varchar(100),
	`전송_시간` datetime,
	foreign key (`고객_id`) references `고객`(`고객_id`) ON DELETE CASCADE
);