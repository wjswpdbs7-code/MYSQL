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

(30분 간격 + 이상 센서값 발생시) 로그 기록하고 그에 따른 장치 작동 여부 결정 
-- 몇분간격으로 할까
-- 30초 + 이벤트 발생시로

10개의 비닐하우스마다 각각의 장치와 센서는 2개씩 있다고 가정 다만 수위센서는 1개씩(비닐하우스당1개 의 물탱크가 있다고 가정) 

--------------------------------------------------------------------------------

## 1. 비닐하우스 

-- - 비닐 하우스 ID(PRIMARY KEY) int
-- - 비닐 하우스 상태 (예: 사용중, 미사용 등) varchar(20)
-- - 재배 작물 종류,상태 (상추, 토마토, 고추등) varchar(20)
-- - 재배 시작 일 date
-- - 현재 재배 기간 int 
-- - 예상 수확 시기 date

create table house(
    house_id int PRIMARY KEY,
    house_status varchar(20),
    crop_type varchar(20),
    start_planting_date date,
    expected_harvest_date date
);

한글 테이블

create table 비닐하우스(
    비닐하우스ID int PRIMARY KEY,
    비닐하우스상태 varchar(20),
    작물종류 varchar(20),
    재배시작일 date,
    예상수확시기 date
);

가상 데이터 

insert into house values (1, '사용중', '상추', STR_TO_DATE('2026-01-01', '%Y-%m-%d'), STR_TO_DATE('2026-02-15', '%Y-%m-%d'));
insert into house values (2, '사용중', '상추', STR_TO_DATE('2026-01-02', '%Y-%m-%d'), STR_TO_DATE('2026-02-16', '%Y-%m-%d'));
insert into house values (3, '사용중', '토마토', STR_TO_DATE('2026-01-03', '%Y-%m-%d'), STR_TO_DATE('2026-03-01', '%Y-%m-%d'));
insert into house values (4, '사용중', '토마토', STR_TO_DATE('2026-01-03', '%Y-%m-%d'), STR_TO_DATE('2026-03-01', '%Y-%m-%d'));
insert into house values (5, '사용중', '토마토', STR_TO_DATE('2026-01-04', '%Y-%m-%d'), STR_TO_DATE('2026-03-02', '%Y-%m-%d'));
insert into house values (6, '사용중', '토마토', STR_TO_DATE('2026-01-04', '%Y-%m-%d'), STR_TO_DATE('2026-03-02', '%Y-%m-%d'));
insert into house values (7, '사용중', '고추', STR_TO_DATE('2026-01-07', '%Y-%m-%d'), STR_TO_DATE('2026-03-25', '%Y-%m-%d'));
insert into house values (8, '사용중', '고추', STR_TO_DATE('2026-01-09', '%Y-%m-%d'), STR_TO_DATE('2026-03-27', '%Y-%m-%d'));
insert into house values (9, '사용중', '고추', STR_TO_DATE('2026-01-11', '%Y-%m-%d'), STR_TO_DATE('2026-03-29', '%Y-%m-%d'));
insert into house values (10, '미사용', '없음', null, null);

--비닐 하우스 미사용중인 경우

-- auto_increment로 하면 자동으로 증가해서 편하긴 한데 지금은 10개니까 일단은 수동으로 입력



## 2. 온습도 센서 -- 센서에 대한 정의만 센서값 분리

-- - 온습도 센서 ID(PRIMARY KEY)
-- - 비닐 하우스 ID(FOREIGN KEY)
-- - 온습도 센서 상태 (예: 정상, 미사용, 고장의심 등)

create table temp_humidity_sensor(
    th_sensor_id int PRIMARY KEY,
    house_id int,
    th_sensor_status varchar(20),
    foreign key (house_id) references house(house_id) ON DELETE CASCADE
);

한글 테이블

create table 온습도센서(
    온습도센서ID int PRIMARY KEY,
    비닐하우스ID int,
    온습도센서상태 varchar(20),
    foreign key (비닐하우스ID) references 비닐하우스(비닐하우스ID) ON DELETE CASCADE
);

가상 데이터
insert into temp_humidity_sensor values (1, 1, '정상작동'); 
insert into temp_humidity_sensor values (2, 1, '정상작동');
insert into temp_humidity_sensor values (3, 2, '정상작동');
insert into temp_humidity_sensor values (4, 2, '정상작동');
insert into temp_humidity_sensor values (5, 3, '정상작동');
insert into temp_humidity_sensor values (6, 3, '정상작동');
insert into temp_humidity_sensor values (7, 4, '정상작동');
insert into temp_humidity_sensor values (8, 4, '정상작동');
insert into temp_humidity_sensor values (9, 5, '정상작동');
insert into temp_humidity_sensor values (10, 5, '정상작동');
insert into temp_humidity_sensor values (11, 6, '정상작동');
insert into temp_humidity_sensor values (12, 6, '정상작동');
insert into temp_humidity_sensor values (13, 7, '정상작동');
insert into temp_humidity_sensor values (14, 7, '정상작동');

insert into temp_humidity_sensor values (15, 8, '점검요함');
insert into temp_humidity_sensor values (16, 8, '정상작동');

insert into temp_humidity_sensor values (17, 9, '점검요함');
insert into temp_humidity_sensor values (18, 9, '점검요함');

insert into temp_humidity_sensor values (19, 10, '미사용');
insert into temp_humidity_sensor values (20, 10, '미사용');


-- 쓰레기 값(오류)인지 아니면 이상상황(고온, 저온 등) 발생인지를 구분할 기준값 필요

## 2-1 온습도 센서 값 

-- - 온습도 센서 ID(PRIMARY KEY)
-- - 온도 값
-- - 습도 값
-- - 센서 기록 시각
-- - 온습도 이상 여부(예: 온습도 경고값 혹은 쓰레기값)

create table temp_humidity_sensor(
    th_sensor_id int PRIMARY KEY,
    temperature decimal(5,2),
    humidity decimal(5,2),
    record_time datetime,
    abnormality_flag varchar(40), 
    foreign key (th_sensor_id) references temp_humidity_sensor(th_sensor_id) ON DELETE CASCADE
);


create table 온습도센서(
    온습도센서ID int PRIMARY KEY,
    온도값 decimal(5,2),
    습도값 decimal(5,2),
    센서기록시각 datetime,
    온습도이상여부 varchar(40),
    foreign key (온습도센서ID) references 온습도센서(온습도센서ID) ON DELETE CASCADE
);

insert into temp_humidity_sensor values (1, 25.00, 60.00, NOW(), '없음'); 
insert into temp_humidity_sensor values (2, 24.50, 58.00, NOW(), '없음');
insert into temp_humidity_sensor values (3, 26.00, 65.00, NOW(), '없음');
insert into temp_humidity_sensor values (4, 25.50, 63.00, NOW(), '없음');
insert into temp_humidity_sensor values (5, 28.00, 70.00, NOW(), '없음');
insert into temp_humidity_sensor values (6, 27.50, 68.00, NOW(), '없음');
insert into temp_humidity_sensor values (7, 25.40, 62.00, NOW(), '없음');
insert into temp_humidity_sensor values (8, 24.90, 59.00, NOW(), '없음');
insert into temp_humidity_sensor values (9, 26.20, 67.00, NOW(), '없음');
insert into temp_humidity_sensor values (10, 25.80, 64.00, NOW(), '없음');
insert into temp_humidity_sensor values (11, 27.00, 69.00, NOW(), '없음');
insert into temp_humidity_sensor values (12, 26.50, 66.00, NOW(), '없음');
insert into temp_humidity_sensor values (13, 24.80, 61.00, NOW(), '없음');
insert into temp_humidity_sensor values (14, 24.30, 57.00, NOW(), '없음');

insert into temp_humidity_sensor values (15, -211.12 , 13.02, NOW(), '오류 예상');
insert into temp_humidity_sensor values (16 , 25.00, 60.00, NOW(), '없음');

insert into temp_humidity_sensor values (17, 50.00, 5.00, NOW(), '오류 혹은 이상고온 예상');
insert into temp_humidity_sensor values (18, 49.00, 4.00, NOW(), '오류 혹은 이상고온 예상');

insert into temp_humidity_sensor values (19, null, null, NOW(), '없음');
insert into temp_humidity_sensor values (20, null, null, NOW(), '없음');

## 3. 조도 센서

-- - 조도 센서 ID(PRIMARY KEY)
-- - 비닐 하우스 ID(FOREIGN KEY)
-- - 조도 값
-- - 센서 기록 시각
-- - 조도 이상 여부(조도 경고값 혹은 쓰레기값)

create table light_sensor(
    lx_sensor_id int PRIMARY KEY,
    house_id int,
    light_value decimal(10,2),
    record_time datetime,
    abnormality_flag varchar(40),
    foreign key (house_id) references house(house_id) ON DELETE CASCADE 
);
-- on delete cascade를 사용하여 house 테이블에서 비닐하우스가 삭제될 때 해당 비닐하우스에 속한 센서 데이터도 같이 지워지게



한글 
create table 조도센서(
    조도센서ID int PRIMARY KEY,
    비닐하우스ID int,
    조도값 decimal(10,2),
    센서기록시각 datetime,
    조도이상여부 varchar(40),
    foreign key (비닐하우스ID) references 비닐하우스(비닐하우스ID) ON DELETE CASCADE
);

가상 데이터

insert into light_sensor values (1, 1, 3600.00, NOW(), '없음');
insert into light_sensor values (2, 1, 3700.00, NOW(), '없음');
insert into light_sensor values (3, 2, 3500.00, NOW(), '없음');
insert into light_sensor values (4, 2, 3600.00, NOW(), '없음');
insert into light_sensor values (5, 3, 3700.00, NOW(), '없음');
insert into light_sensor values (6, 3, 3800.00, NOW(), '없음');
insert into light_sensor values (7, 4, 3600.00, NOW(), '없음');
insert into light_sensor values (8, 4, 3700.00, NOW(), '없음');
insert into light_sensor values (9, 5, 3600.00, NOW(), '없음');
insert into light_sensor values (10, 5, 3900.12, NOW(), '없음');
insert into light_sensor values (11, 6, 3600.51, NOW(), '없음');
insert into light_sensor values (12, 6, 3700.00, NOW(), '없음');
insert into light_sensor values (13, 7, 4282.79, NOW(), '과다');
insert into light_sensor values (14, 7, 4112.21, NOW(), '과다');
insert into light_sensor values (15, 8, 3800.23, NOW(), '없음');
insert into light_sensor values (16, 8, 3891.21, NOW(), '없음');
insert into light_sensor values (17, 9, 3800.00, NOW(), '없음');
insert into light_sensor values (18, 9, 3600.00, NOW(), '없음');
insert into light_sensor values (19, 10, null, NOW(), '없음');
insert into light_sensor values (20, 10, null, NOW(), '없음');


-- now는 현재 시각 기록해주는거

## 4. 토양 수분 센서

-- - 토양 수분 센서 ID(PRIMARY KEY)
-- - 비닐 하우스 ID(FOREIGN KEY)
-- - 토양 수분 값
-- - 센서 기록 시각    
-- - 토양 수분 이상 여부(토양 수분 경고값 혹은 쓰레기값)

create table soil_moisture_sensor(
    soil_sensor_id int PRIMARY KEY,
    house_id int,
    moisture_value decimal(5,2),
    record_time datetime,
    abnormality_flag varchar(40),
    foreign key (house_id) references house(house_id) ON DELETE CASCADE
);

한글 테이블

create table 토양수분센서(
    토양수분센서ID int PRIMARY KEY,
    비닐하우스ID int,
    토양수분값 decimal(5,2),
    센서기록시각 datetime,
    토양수분이상여부 varchar(40),
    foreign key (비닐하우스ID) references 비닐하우스(비닐하우스ID) ON DELETE CASCADE
);

insert into soil_moisture_sensor values (1, 1, 1200.00, NOW(), '없음');
insert into soil_moisture_sensor values (2, 1, 1000.00, NOW(), '건조');
insert into soil_moisture_sensor values (3, 2, 1300.00, NOW(), '없음');
insert into soil_moisture_sensor values (4, 2, 1150.00, NOW(), '없음');
insert into soil_moisture_sensor values (5, 3, 1400.00, NOW(), '없음');
insert into soil_moisture_sensor values (6, 3, 1500.00, NOW(), '없음');
insert into soil_moisture_sensor values (7, 4, 1250.00, NOW(), '없음');
insert into soil_moisture_sensor values (8, 4, 1350.00, NOW(), '없음');
insert into soil_moisture_sensor values (9, 5, 1350.00, NOW(), '없음');
insert into soil_moisture_sensor values (10, 5, 1150.00, NOW(), '없음');
insert into soil_moisture_sensor values (11, 6, 1280.00, NOW(), '없음');
insert into soil_moisture_sensor values (12, 6, 1321.23, NOW(), '없음');
insert into soil_moisture_sensor values (13, 7, 1150.45, NOW(), '없음');
insert into soil_moisture_sensor values (14, 7, 1298.00, NOW(), '없음');
insert into soil_moisture_sensor values (15, 8, 1300.00, NOW(), '없음');
insert into soil_moisture_sensor values (16, 8, 1340.00, NOW(), '없음');
insert into soil_moisture_sensor values (17, 9, 1600.00, NOW(), '없음');
insert into soil_moisture_sensor values (18, 9, 1700.00, NOW(), '없음');
insert into soil_moisture_sensor values (19, 10, null, NOW(), '없음');
insert into soil_moisture_sensor values (20, 10, null, NOW(), '없음');

## 5. 수위 센서

-- - 수위 센서 ID(PRIMARY KEY)
-- - 비닐 하우스 ID(FOREIGN KEY)
-- - 수위 값
-- - 센서 기록 시각
-- - 수위 이상 여부(수위 경고값 혹은 쓰레기값)

create table water_level_sensor(
    wl_sensor_id int PRIMARY KEY,
    house_id int,
    water_level_value decimal(5,2),
    record_time datetime,
    abnormality_flag varchar(40),
    foreign key (house_id) references house(house_id) ON DELETE CASCADE
);

한글 테이블

create table 수위센서(
    수위센서ID int PRIMARY KEY,
    비닐하우스ID int,
    수위값 decimal(5,2),
    센서기록시각 datetime,
    수위이상여부 varchar(40),
    foreign key (비닐하우스ID) references 비닐하우스(비닐하우스ID) ON DELETE CASCADE
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
-- - 펌프 상태 on / off
-- - 펌프 작동 시각

create table pump_device(
    pump_device_id int PRIMARY KEY,
    house_id int,
    pump_status varchar(10),
    operation_time datetime,
    foreign key (house_id) references house(house_id) ON DELETE CASCADE
);

한글 테이블

create table 펌프장치(
    펌프장치ID int PRIMARY KEY,
    비닐하우스ID int,
    펌프상태 varchar(10),
    펌프작동시각 datetime,
    foreign key (비닐하우스ID) references 비닐하우스(비닐하우스ID) ON DELETE CASCADE
);

insert into pump_device values (1, 1, 'OFF', NOW());
insert into pump_device values (2, 1, 'ON', NOW());
insert into pump_device values (3, 2, 'OFF', NOW());
insert into pump_device values (4, 2, 'OFF', NOW());
insert into pump_device values (5, 3, 'OFF', NOW());
insert into pump_device values (6, 3, 'OFF', NOW());
insert into pump_device values (7, 4, 'OFF', NOW());
insert into pump_device values (8, 4, 'OFF', NOW());
insert into pump_device values (9, 5, 'OFF', NOW());
insert into pump_device values (10, 5, 'OFF', NOW());
insert into pump_device values (11, 6, 'OFF', NOW());
insert into pump_device values (12, 6, 'OFF', NOW());
insert into pump_device values (13, 7, 'OFF', NOW());
insert into pump_device values (14, 7, 'OFF', NOW());
insert into pump_device values (15, 8, 'OFF', NOW());
insert into pump_device values (16, 8, 'OFF', NOW());
insert into pump_device values (17, 9, 'OFF', NOW());
insert into pump_device values (18, 9, 'OFF', NOW());

insert into pump_device values (19, 10, 'OFF', NOW());
insert into pump_device values (20, 10, 'OFF', NOW());


## 7. 차양막 장치

-- - 차양막 장치 ID(PRIMARY KEY)
-- - 비닐 하우스 ID(FOREIGN KEY)
-- - 차양막 상태 (열림/닫힘)
-- - 차양막 작동 시각

create table shade_device(
    shade_device_id int PRIMARY KEY,
    house_id int,
    shade_status varchar(10),
    operation_time datetime,
    foreign key (house_id) references house(house_id) ON DELETE CASCADE
);

한글 테이블

create table 차양막장치(
    차양막장치ID int PRIMARY KEY,
    비닐하우스ID int,
    차양막상태 varchar(10),
    차양막작동시각 datetime,
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

8. 메세지 전송

create table message(
    message_id int PRIMARY KEY,
    house_id int,
    sending_time datetime,
    foreign key (house_id) references house(house_id) ON DELETE CASCADE
);

한글 테이블

create table 메세지(
    메세지ID int PRIMARY KEY,
    비닐하우스ID int,
    전송시각 datetime,
    foreign key (비닐하우스ID) references 비닐하우스(비닐하우스ID) ON DELETE CASCADE
);


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