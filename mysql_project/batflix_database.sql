사전지식
foreign key를 primary key로 사용하는것은 가능하지만 일반적으로는 권장되지 않습니다. foreign key는 다른 테이블의 primary key를 참조하는 역할을 하며, primary key는 테이블 내에서 고유한 값을 가지는 열입니다. foreign key를 primary key로 사용하면 데이터의 무결성을 유지하기 어려울 수 있으며, 데이터베이스 설계의 유연성이 제한될 수 있습니다. 일반적으로는 foreign key와 primary key를 별도의 열로 유지하는 것이 좋습니다.

목표: 기존 json 대신 mysql로 데이터 베이스 구성 해서 대형 스마트팜 데이터 가능하게 하기

현재 사용중인 센서
1. 온습도 센서


2. 조도 센서


3. 토양 수분 센서
4. 수위 센서

향후 추가?
5.이미지 센서 (식물 상태 모니터링) (요건 opencv 배우고) (이상 값 있을때 전송)
6. 

장치
1. 펌프 장치
2. 차양막 장치(모터)

테이블 정리

(30초 간격 + 이벤트(이상센서+장치 작동)발생시) 로그 기록하고 그에 따른 장치 작동 여부 결정 
-- 몇분간격으로 할까
-- 30초 + 이벤트 발생시로

10개의 비닐하우스마다 각각의 장치와 센서는 2개씩 있다고 가정 다만 수위센서는 1개씩(비닐하우스당1개 의 물탱크가 있다고 가정) 

--------------------------------------------------------------------------------

## 0. 고객정보

    create table 고객(
        고객ID int PRIMARY KEY,
        고객이름 varchar(20),
        고객전화번호 varchar(20),
        고객이메일 varchar(100),
        고객주소 varchar(60)
    )

    create table customer(
        customer_id int PRIMARY KEY,
        customer_name varchar(20),
        customer_phonenum varchar(20),
        customer_email varchar(100),
        customer_addr varchar(100)
    )

가상데이터

insert into customer values (1, '홍길동', '010-1234-5678', 'jildong@gmail.com', '서울시 강남구');
insert into customer values (2, '김철수', '010-2345-6789', 'chursu@naver.com', '대전시 유성구');
insert into customer values (3, '이영희', '010-3456-7890', 'younghee@gmail.com', '세종시 조치원읍');

## 1. 비닐하우스 

-- - 비닐 하우스 ID(PRIMARY KEY) int
-- - 비닐 하우스 상태 (예: 사용중, 미사용 등) varchar(20)
-- - 재배 작물 종류,상태 (상추, 토마토, 고추등) varchar(20)
-- - 재배 시작 일 date
-- - 현재 재배 기간 int 
-- - 예상 수확 시기 date
-- - 고객 ID

create table house(
    house_id int PRIMARY KEY,
    house_status varchar(20),
    crop_type varchar(20),
    start_planting_date date,
    expected_harvest_date date
    customer_id int,
    foreign key (house_id) references house(house_id) ON DELETE CASCADE,
    foreign key (customer_id) references customer(customer_id) ON DELETE CASCADE
);

한글 테이블

create table 비닐하우스(
    비닐하우스ID int PRIMARY KEY,
    비닐하우스상태 varchar(20),
    작물종류 varchar(20),
    재배시작일 date,
    예상수확시기 date
    고객ID int,
    foreign key (비닐하우스ID) references 비닐하우스(비닐하우스ID) ON DELETE CASCADE,
    foreign key (고객ID) references 고객(고객ID) ON DELETE CASCADE
);

가상 데이터 

insert into house values (1, '사용중', '상추', STR_TO_DATE('2026-01-01', '%Y-%m-%d'), STR_TO_DATE('2026-02-15', '%Y-%m-%d'), 1);
insert into house values (2, '사용중', '상추', STR_TO_DATE('2026-01-02', '%Y-%m-%d'), STR_TO_DATE('2026-02-16', '%Y-%m-%d'), 2);
insert into house values (3, '사용중', '토마토', STR_TO_DATE('2026-01-03', '%Y-%m-%d'), STR_TO_DATE('2026-03-01', '%Y-%m-%d'), 1);
insert into house values (4, '사용중', '토마토', STR_TO_DATE('2026-01-03', '%Y-%m-%d'), STR_TO_DATE('2026-03-01', '%Y-%m-%d'), 1);
insert into house values (5, '사용중', '토마토', STR_TO_DATE('2026-01-04', '%Y-%m-%d'), STR_TO_DATE('2026-03-02', '%Y-%m-%d'), 3);
insert into house values (6, '사용중', '토마토', STR_TO_DATE('2026-01-04', '%Y-%m-%d'), STR_TO_DATE('2026-03-02', '%Y-%m-%d'), 3);
insert into house values (7, '사용중', '고추', STR_TO_DATE('2026-01-07', '%Y-%m-%d'), STR_TO_DATE('2026-03-25', '%Y-%m-%d'), 2);
insert into house values (8, '사용중', '고추', STR_TO_DATE('2026-01-09', '%Y-%m-%d'), STR_TO_DATE('2026-03-27', '%Y-%m-%d'), 2);
insert into house values (9, '사용중', '고추', STR_TO_DATE('2026-01-11', '%Y-%m-%d'), STR_TO_DATE('2026-03-29', '%Y-%m-%d'), 2);
insert into house values (10, '미사용', '없음', null, null, null);

--비닐 하우스 미사용중인 경우

-- auto_increment로 하면 자동으로 증가해서 편하긴 한데 지금은 10개니까 일단은 수동으로 입력

## 2. 온습도 센서 -- 센서에 대한 정의만 센서값 분리

-- - 온습도 센서 ID(PRIMARY KEY)
-- - 비닐 하우스 ID(FOREIGN KEY)

create table temp_humidity_sensor(
    th_sensor_id int PRIMARY KEY,
    house_id int,
    foreign key (house_id) references house(house_id) ON DELETE CASCADE
);

한글 테이블

create table 온습도센서(
    온습도센서ID int PRIMARY KEY,
    비닐하우스ID int,
    foreign key (비닐하우스ID) references 비닐하우스(비닐하우스ID) ON DELETE CASCADE
);

가상 데이터
insert into temp_humidity_sensor values (1, 1); 
insert into temp_humidity_sensor values (2, 1);
insert into temp_humidity_sensor values (3, 2);
insert into temp_humidity_sensor values (4, 2);
insert into temp_humidity_sensor values (5, 3);
insert into temp_humidity_sensor values (6, 3);
insert into temp_humidity_sensor values (7, 4);
insert into temp_humidity_sensor values (8, 4);
insert into temp_humidity_sensor values (9, 5);
insert into temp_humidity_sensor values (10, 5);
insert into temp_humidity_sensor values (11, 6);
insert into temp_humidity_sensor values (12, 6);
insert into temp_humidity_sensor values (13, 7);
insert into temp_humidity_sensor values (14, 7);

insert into temp_humidity_sensor values (15, 8);
insert into temp_humidity_sensor values (16, 8);

insert into temp_humidity_sensor values (17, 9);
insert into temp_humidity_sensor values (18, 9);

insert into temp_humidity_sensor values (19, 10);
insert into temp_humidity_sensor values (20, 10);

## 2-1 온습도 센서 값 

-- - 값 id(PRIMARY KEY)
-- - 온습도 센서 ID(FOREIGN KEY)
-- - 온도 값
-- - 습도 값
-- - 센서 기록 시각
-- - 온습도 센서 상태 (예: 정상, 미사용, 고온저온, 다습건조등)

create table temp_humidity_sensor(

    th_value_id int PRIMARY KEY,
    th_sensor_id int,
    temperature decimal(5,2),
    humidity decimal(5,2),
    record_time datetime,
    th_sensor_status varchar(40),
    foreign key (th_sensor_id) references temp_humidity_sensor(th_sensor_id) ON DELETE CASCADE
);


create table 온습도센서(
    온습도센서ID int,
    온도값 decimal(5,2),
    습도값 decimal(5,2),
    센서기록시각 datetime,
    온습도센서상태 varchar(40),
    foreign key (온습도센서ID) references 온습도센서(온습도센서ID) ON DELETE CASCADE
);

insert into temp_humidity_sensor values (1, 1, 25.00, 60.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동'); 
insert into temp_humidity_sensor values (2, 2, 24.50, 58.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_sensor values (3, 3, 26.00, 65.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_sensor values (4, 4, 25.50, 63.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_sensor values (5, 5, 28.00, 70.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_sensor values (6, 6, 27.50, 68.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_sensor values (7, 7, 25.40, 62.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_sensor values (8, 8, 24.90, 59.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_sensor values (9, 9, 26.20, 67.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_sensor values (10, 10, 25.80, 64.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_sensor values (11, 11, 27.00, 69.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_sensor values (12, 12, 26.50, 66.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_sensor values (13, 13, 24.80, 61.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_sensor values (14, 14, 24.30, 57.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');

insert into temp_humidity_sensor values (15, 15, -211.12, 13.02, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '오류 예상');
insert into temp_humidity_sensor values (16, 16, 25.00, 60.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');

insert into temp_humidity_sensor values (17, 17, 50.00, 5.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '오류 혹은 이상고온 예상');
insert into temp_humidity_sensor values (18, 18, 49.00, 4.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '오류 혹은 이상고온 예상');

insert into temp_humidity_sensor values (19, 19, null, null, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '미사용');
insert into temp_humidity_sensor values (20, 20, null, null, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '미사용');


## 3. 조도 센서

-- - 조도 센서 ID(PRIMARY KEY)
-- - 비닐 하우스 ID(FOREIGN KEY)
create table light_sensor(
    lx_sensor_id int PRIMARY KEY,
    house_id int,
    foreign key (house_id) references house(house_id) ON DELETE CASCADE 
);


한글 
create table 조도센서(
    조도센서ID int PRIMARY KEY,
    비닐하우스ID int,
    foreign key (비닐하우스ID) references 비닐하우스(비닐하우스ID) ON DELETE CASCADE
);

가상 데이터

insert into light_sensor values (1, 1);
insert into light_sensor values (2, 1);
insert into light_sensor values (3, 2);
insert into light_sensor values (4, 2);
insert into light_sensor values (5, 3);
insert into light_sensor values (6, 3);
insert into light_sensor values (7, 4);
insert into light_sensor values (8, 4);
insert into light_sensor values (9, 5);
insert into light_sensor values (10, 5);
insert into light_sensor values (11, 6);
insert into light_sensor values (12, 6);
insert into light_sensor values (13, 7);
insert into light_sensor values (14, 7);
insert into light_sensor values (15, 8);
insert into light_sensor values (16, 8);
insert into light_sensor values (17, 9);
insert into light_sensor values (18, 9);
insert into light_sensor values (19, 10);
insert into light_sensor values (20, 10);

## 3-1. 조도 값


-- - 값 ID(PRIMARY KEY)
-- - 조도 센서 ID(PRIMARY KEY)
-- - 조도 값
-- - 센서 기록 시각
-- - 조도 이상 여부(조도 경고값 혹은 쓰레기값)

create table light_sensor(
    lx_value_id int PRIMARY KEY,
    lx_sensor_id int, 
    light_value decimal(10,2),
    record_time datetime,
    lx_sensor_status varchar(40),
    foreign key (lx_sensor_id) references light_sensor(lx_sensor_id) ON DELETE CASCADE 
);
-- on delete cascade를 사용하여 house 테이블에서 비닐하우스가 삭제될 때 해당 비닐하우스에 속한 센서 데이터도 같이 지워지게



한글 
create table 조도센서(
    lx_value_id int PRIMARY KEY,
    조도센서ID int,
    조도값 decimal(10,2),
    센서기록시각 datetime,
    조도센서상태 varchar(40),
    foreign key (조도센서ID) references 조도센서(조도센서ID) ON DELETE CASCADE
);

가상 데이터

insert into light_sensor values (1, 1, 3600.00, NOW(), '없음');
insert into light_sensor values (2, 2, 3700.00, NOW(), '없음');
insert into light_sensor values (3, 3, 3500.00, NOW(), '없음');
insert into light_sensor values (4, 4, 3600.00, NOW(), '없음');
insert into light_sensor values (5, 5, 3700.00, NOW(), '없음');
insert into light_sensor values (6, 6, 3800.00, NOW(), '없음');
insert into light_sensor values (7, 7, 3600.00, NOW(), '없음');
insert into light_sensor values (8, 8, 3700.00, NOW(), '없음');
insert into light_sensor values (9, 9, 3600.00, NOW(), '없음');
insert into light_sensor values (10, 10, 3900.12, NOW(), '없음');
insert into light_sensor values (11, 11, 3600.51, NOW(), '없음');
insert into light_sensor values (12, 12, 3700.00, NOW(), '없음');
insert into light_sensor values (13, 13, 4282.79, NOW(), '과다');
insert into light_sensor values (14, 14, 4112.21, NOW(), '과다');
insert into light_sensor values (15, 15, 3800.23, NOW(), '없음');
insert into light_sensor values (16, 16, 3891.21, NOW(), '없음');
insert into light_sensor values (17, 17, 3800.00, NOW(), '없음');
insert into light_sensor values (18, 18, 3600.00, NOW(), '없음');
insert into light_sensor values (19, 19, null, NOW(), '없음');
insert into light_sensor values (20, 20, null, NOW(), '없음');

## 4. 토양 수분 센서

-- - 토양 수분 센서 ID(PRIMARY KEY)
-- - 비닐 하우스 ID(FOREIGN KEY)

create table soil_moisture_sensor(
    soil_sensor_id int PRIMARY KEY,
    house_id int,
    foreign key (house_id) references house(house_id) ON DELETE CASCADE
);

한글 테이블

create table 토양수분센서(
    토양수분센서ID int PRIMARY KEY,
    비닐하우스ID int,
    foreign key (비닐하우스ID) references 비닐하우스(비닐하우스ID) ON DELETE CASCADE
);

insert into soil_moisture_sensor values (1, 1);
insert into soil_moisture_sensor values (2, 1);
insert into soil_moisture_sensor values (3, 2);
insert into soil_moisture_sensor values (4, 2);
insert into soil_moisture_sensor values (5, 3);
insert into soil_moisture_sensor values (6, 3);
insert into soil_moisture_sensor values (7, 4);
insert into soil_moisture_sensor values (8, 4);
insert into soil_moisture_sensor values (9, 5);
insert into soil_moisture_sensor values (10, 5);
insert into soil_moisture_sensor values (11, 6);
insert into soil_moisture_sensor values (12, 6);
insert into soil_moisture_sensor values (13, 7);
insert into soil_moisture_sensor values (14, 7);
insert into soil_moisture_sensor values (15, 8);
insert into soil_moisture_sensor values (16, 8);
insert into soil_moisture_sensor values (17, 9);
insert into soil_moisture_sensor values (18, 9);
insert into soil_moisture_sensor values (19, 10);
insert into soil_moisture_sensor values (20, 10);


## 4-1. 토양 수분 값

-- - 값 ID(PRIMARY KEY)
-- - 토양 수분 센서 ID(PRIMARY KEY)
-- - 토양 수분 값
-- - 센서 기록 시각    
-- - 토양 수분 센서 상태

create table soil_moisture_sensor(
    soil_value_id int PRIMARY KEY,
    soil_sensor_id int,
    soil_value decimal(5,2),
    record_time datetime,
    soil_sensor_status varchar(40),
    foreign key (soil_sensor_id) references soil_moisture_sensor(soil_sensor_id) ON DELETE CASCADE
);

create table 토양수분센서(
    토양수분값ID int PRIMARY KEY,
    토양수분센서ID int,
    토양수분값 decimal(5,2),
    센서기록시각 datetime,
    토양수분센서상태 varchar(40),
    foreign key (토양수분센서ID) references 토양수분센서(토양수분센서ID) ON DELETE CASCADE
);

insert into soil_moisture_sensor values (1, 1, 1200.00, NOW(), '적절');
insert into soil_moisture_sensor values (2, 2, 1000.00, NOW(), '건조');
insert into soil_moisture_sensor values (3, 3, 1300.00, NOW(), '적절');
insert into soil_moisture_sensor values (4, 4, 1150.00, NOW(), '적절');
insert into soil_moisture_sensor values (5, 5, 1400.00, NOW(), '적절');
insert into soil_moisture_sensor values (6, 6, 1500.00, NOW(), '적절');
insert into soil_moisture_sensor values (7, 7, 1250.00, NOW(), '적절');
insert into soil_moisture_sensor values (8, 8, 1350.00, NOW(), '적절');
insert into soil_moisture_sensor values (9, 9, 1350.00, NOW(), '적절');
insert into soil_moisture_sensor values (10, 10, 1150.00, NOW(), '적절');
insert into soil_moisture_sensor values (11, 11, 1280.00, NOW(), '적절');
insert into soil_moisture_sensor values (12, 12, 1321.23, NOW(), '적절');
insert into soil_moisture_sensor values (13, 13, 1150.45, NOW(), '적절');
insert into soil_moisture_sensor values (14, 14, 1298.00, NOW(), '적절');
insert into soil_moisture_sensor values (15, 15, 1300.00, NOW(), '적절');
insert into soil_moisture_sensor values (16, 16, 1340.00, NOW(), '적절');
insert into soil_moisture_sensor values (17, 17, 1600.00, NOW(), '적절');
insert into soil_moisture_sensor values (18, 18, 1700.00, NOW(), '적절');
insert into soil_moisture_sensor values (19, 19, null, NOW(), '미사용');
insert into soil_moisture_sensor values (20, 20, null, NOW(), '미사용');

## 5. 수위 센서

-- - 수위 센서 ID(PRIMARY KEY)
-- - 비닐 하우스 ID(FOREIGN KEY)

create table water_level_sensor(
    wl_sensor_id int PRIMARY KEY,
    house_id int,
    foreign key (house_id) references house(house_id) ON DELETE CASCADE
);

한글 테이블

create table 수위센서(
    수위센서ID int PRIMARY KEY,
    비닐하우스ID int,
    foreign key (비닐하우스ID) references 비닐하우스(비닐하우스ID) ON DELETE CASCADE
);

insert into water_level_sensor values (1, 1);
insert into water_level_sensor values (2, 2);
insert into water_level_sensor values (3, 3);
insert into water_level_sensor values (4, 4);
insert into water_level_sensor values (5, 5);
insert into water_level_sensor values (6, 6);
insert into water_level_sensor values (7, 7);
insert into water_level_sensor values (8, 8);
insert into water_level_sensor values (9, 9);
insert into water_level_sensor values (10, 10);


## 5-1. 수위 센서 값

-- - 값 ID(PRIMARY KEY)
-- - 수위 센서 ID
-- - 수위 값
-- - 센서 기록 시각
-- - 수위 이상 여부(수위 경고값 혹은 쓰레기값)

create table water_level_sensor(
    wl_value_id int PRIMARY KEY,
    wl_sensor_id int,
    water_level_value decimal(5,2),
    record_time datetime,
    abnormality_flag varchar(40),
    foreign key (wl_sensor_id) references water_level_sensor(wl_sensor_id) ON DELETE CASCADE
);

한글 테이블

create table 수위센서(
    수위값ID int PRIMARY KEY,
    수위센서ID int,
    수위값 decimal(5,2),
    센서기록시각 datetime,
    수위이상여부 varchar(40),
    foreign key (수위센서ID) references 수위센서(수위센서ID) ON DELETE CASCADE
);

insert into water_level_sensor values (1, 1, 80.00, NOW(), '없음');
insert into water_level_sensor values (2, 2, 40.00, NOW(), '없음');
insert into water_level_sensor values (3, 3, 60.00, NOW(), '없음');
insert into water_level_sensor values (4, 4, 30.00, NOW(), '없음');
insert into water_level_sensor values (5, 5, 70.00, NOW(), '없음');
insert into water_level_sensor values (6, 6, 50.00, NOW(), '없음');
insert into water_level_sensor values (7, 7, 90.00, NOW(), '없음');
insert into water_level_sensor values (8, 8, 20.00, NOW(), '없음');
insert into water_level_sensor values (9, 9, 85.00, NOW(), '없음');
insert into water_level_sensor values (10, 10, null, NOW(), '없음');


## 6. 펌프 장치 

-- - 펌프 장치 ID(PRIMARY KEY)
-- - 비닐 하우스 ID(FOREIGN KEY)

create table pump_device(
    pump_device_id int PRIMARY KEY,
    house_id int,
    foreign key (house_id) references house(house_id) ON DELETE CASCADE
);

한글 테이블

create table 펌프장치(
    펌프장치ID int PRIMARY KEY,
    비닐하우스ID int,
    foreign key (비닐하우스ID) references 비닐하우스(비닐하우스ID) ON DELETE CASCADE
);

insert into pump_device values (1, 1);
insert into pump_device values (2, 1);
insert into pump_device values (3, 2);
insert into pump_device values (4, 2);
insert into pump_device values (5, 3);
insert into pump_device values (6, 3);
insert into pump_device values (7, 4);
insert into pump_device values (8, 4);
insert into pump_device values (9, 5);
insert into pump_device values (10, 5);
insert into pump_device values (11, 6);
insert into pump_device values (12, 6);
insert into pump_device values (13, 7);
insert into pump_device values (14, 7);
insert into pump_device values (15, 8);
insert into pump_device values (16, 8);
insert into pump_device values (17, 9);
insert into pump_device values (18, 9);

insert into pump_device values (19, 10);
insert into pump_device values (20, 10);


## 6 -1. 펌프 장치 작동 이력

-- - 펌프 장치 작동 이력 ID(PRIMARY KEY)
-- - 펌프 장치 ID(PRIMARY KEY)
-- - 펌프 상태 on / off
-- - 펌프 작동 시각

create table pump_device(
    pump_history_id int PRIMARY KEY,
    pump_device_id int,
    pump_status boolean,
    operation_time datetime,
    foreign key (house_id) references house(house_id) ON DELETE CASCADE
);

한글 테이블

create table 펌프장치(
    펌프작동이력ID int PRIMARY KEY,
    펌프장치ID int,
    펌프상태 boolean,
    펌프작동시각 datetime,
    foreign key (비닐하우스ID) references 비닐하우스(비닐하우스ID) ON DELETE CASCADE
);

insert into pump_device values (1, 1, 0, NOW());
insert into pump_device values (2, 1, 1, NOW());
insert into pump_device values (3, 2, 0, NOW());
insert into pump_device values (4, 2, 0, NOW());
insert into pump_device values (5, 3, 0, NOW());
insert into pump_device values (6, 3, 0, NOW());
insert into pump_device values (7, 4, 0, NOW());
insert into pump_device values (8, 4, 0, NOW());
insert into pump_device values (9, 5, 0, NOW());
insert into pump_device values (10, 5, 0, NOW());
insert into pump_device values (11, 6, 0, NOW());
insert into pump_device values (12, 6, 0, NOW());
insert into pump_device values (13, 7, 0, NOW());
insert into pump_device values (14, 7, 0, NOW());
insert into pump_device values (15, 8, 0, NOW());
insert into pump_device values (16, 8, 0, NOW());
insert into pump_device values (17, 9, 0, NOW());
insert into pump_device values (18, 9, 0, NOW());

insert into pump_device values (19, 10, 0, NOW());
insert into pump_device values (20, 10, 0, NOW());

## 7. 차양막 장치

-- - 차양막 장치 ID(PRIMARY KEY)
-- - 비닐 하우스 ID(FOREIGN KEY)

create table shade_device(
    shade_device_id int PRIMARY KEY,
    house_id int,
    foreign key (house_id) references house(house_id) ON DELETE CASCADE
);

한글 테이블

create table 차양막장치(
    차양막장치ID int PRIMARY KEY,
    비닐하우스ID int,
    foreign key (비닐하우스ID) references 비닐하우스(비닐하우스ID) ON DELETE CASCADE
);

가상 데이터 

insert into shade_device values (1, 1, '열림', NOW());
insert into shade_device values (2, 1, '열림', NOW());
insert into shade_device values (3, 2, '열림', NOW());
insert into shade_device values (4, 2, '열림', NOW());
insert into shade_device values (5, 3, '열림', NOW());
insert into shade_device values (6, 3, '열림', NOW());
insert into shade_device values (7, 4, '열림', NOW());
insert into shade_device values (8, 4, '열림', NOW());
insert into shade_device values (9, 5, '열림', NOW());
insert into shade_device values (10, 5, '열림', NOW());
insert into shade_device values (11, 6, '열림', NOW());
insert into shade_device values (12, 6, '열림', NOW());
insert into shade_device values (13, 7, '닫힘', NOW());
insert into shade_device values (14, 7, '닫힘', NOW());
insert into shade_device values (15, 8, '열림', NOW());
insert into shade_device values (16, 8, '열림', NOW());
insert into shade_device values (17, 9, '열림', NOW());
insert into shade_device values (18, 9, '열림', NOW());
insert into shade_device values (19, 10, '열림', NOW());
insert into shade_device values (20, 10, '열림', NOW());

7 -1. 차양막 장치 작동 이력

-- - 차양막 장치 작동 이력 ID(PRIMARY KEY)
-- - 차양막 장치 ID(FOREIGN KEY)
-- - 차양막 상태 (열림/닫힘)
-- - 차양막 작동 시각

create table shade_device(
    shade_history_id int PRIMARY KEY,
    shade_device_id int,
    shade_status boolean,
    operation_time datetime,
    foreign key (shade_device_id) references shade_device(shade_device_id) ON DELETE CASCADE
);

한글 테이블

create table 차양막장치(
    차양막작동이력ID int PRIMARY KEY,
    차양막장치ID int,
    차양막상태 boolean,
    차양막작동시각 datetime,
    foreign key (차양막장치ID) references 차양막장치(차양막장치ID) ON DELETE CASCADE
);

가상 데이터 

insert into shade_device values (1, 1, 1, NOW());
insert into shade_device values (2, 1, 1, NOW());
insert into shade_device values (3, 2, 1, NOW());
insert into shade_device values (4, 2, 1, NOW());
insert into shade_device values (5, 3, 1, NOW());
insert into shade_device values (6, 3, 1, NOW());
insert into shade_device values (7, 4, 1, NOW());
insert into shade_device values (8, 4, 1, NOW());
insert into shade_device values (9, 5, 1, NOW());
insert into shade_device values (10, 5, 1, NOW());
insert into shade_device values (11, 6, 1, NOW());
insert into shade_device values (12, 6, 1, NOW());
insert into shade_device values (13, 7, 0, NOW());
insert into shade_device values (14, 7, 0, NOW());
insert into shade_device values (15, 8, 1, NOW());
insert into shade_device values (16, 8, 1, NOW());
insert into shade_device values (17, 9, 1, NOW());
insert into shade_device values (18, 9, 1, NOW());
insert into shade_device values (19, 10, 1, NOW());
insert into shade_device values (20, 10, 1, NOW());


8. 메세지 전송 이력

create table message(
    message_id int PRIMARY KEY,
    customer_id int,
    message_detail varchar(100),
    sending_time datetime,
    foreign key (customer_id) references customer(customer_id) ON DELETE CASCADE
);

한글 테이블

create table 메세지(
    메세지ID int PRIMARY KEY,
    고객ID int,
    메세지내용 varchar(100),
    전송시각 datetime,
    foreign key (고객ID) references 고객(고객ID) ON DELETE CASCADE
);




-- def on_message(client, userdata, msg):
--     try:
--         payload = msg.payload.decode('utf-8')
--         data = json.loads(payload)
        
--         # 1. 수신 시간 기록 (반드시 KST 기준)
--         now = datetime.now(KST)
--         data['timestamp'] = now.strftime("%Y-%m-%d %H:%M:%S")
--         data['time_short'] = now.strftime("%H:%M")
        
--         # 2. DB 저장
--         db_data = []
--         if os.path.exists(DB_FILE):
--             with open(DB_FILE, 'r', encoding='utf-8') as f:
--                 db_data = json.load(f)
--         db_data.append(data)
--         with open(DB_FILE, 'w', encoding='utf-8') as f:
--             json.dump(db_data[-1000:], f, ensure_ascii=False, indent=2)

--         # 3. 텔레그램 전송 로직
--         event = data.get('event')
--         temp, humi = data.get('temp'), data.get('humi')
--         water, light_raw = data.get('water'), data.get('light')
--         shade, soil_raw = data.get('shade'), data.get('soil')

--         light_str = "적절"
--         if light_raw >= 3950: light_str = "과다"  
--         elif light_raw < 3500: light_str = "부족" 

--         shade_str = "ON" if shade == 1 else "OFF"
--         soil_value = 4095 - soil_raw
--         soil_str = "건조" if soil_value <= 1100 else "적절" 

--         tg_msg = ""
--         if event == "regular":
--             tg_msg = (f"📢 (정기 알림) 현재 텃밭 상황을 알려드려요!\n"
--                       f"🌡️ 현재 온도 : {temp}도\n💧 현재 습도 : {humi}%\n"
--                       f"☀️ 현재 광량 : {light_str}\n🪴 차양막 상태 : {shade_str}\n"
--                       f"🌊 물탱크 잔량 : {water}%\n🌱 토양 수분 상태 : {soil_str}")
--         elif event == "water_low":
--             tg_msg = f"⚠️ 현재 물탱크 잔량 {water}%입니다. 물탱크에 물을 채워주세요.\n(온도: {temp}도, 습도: {humi}%)"
--         elif event == "shade_close":
--             tg_msg = f"☀️ 햇빛이 강하여 차양막으로 식물을 보호합니다.\n(온도: {temp}도, 습도: {humi}%)"
--         elif event == "shade_open":
--             tg_msg = f"🪴 차양막을 열었습니다.\n(온도: {temp}도, 습도: {humi}%)"
--         elif event == "pump_on":
--             tg_msg = f"💧 건조한 텃밭에 물을 주었습니다.\n(온도: {temp}도, 습도: {humi}%)"

--         if tg_msg:
--             send_telegram(tg_msg)

--     except Exception as e:
--         print(f"데이터 처리 에러: {e}")




조도 센서
정상: 3949 까지
과다: 3950의 경우 차양막 자동 닫힘

토양 수분 센서

정상: 1100 부터 습함
건조: 1100 이하
펌프 자동 작동 및 텔레그램 알림

수위 센서
정상: 50% ~ 100%
부족: 49% 이하
고갈 알림? (물탱크 채워주쇼)

온습도 센서
지금 코드에는 임계값 설정 없음 농작물에 위험한 고온 저온 습도에는 경고알림정도 해주면 좋을듯

온도 20~25°C, 습도 30~80% 추가 설정?

농작물별로 온도 습도 범위 다르게 설정하게