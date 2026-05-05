
-- 데이터베이스 생성
create database batflix;


-- 데이터베이스 선택
use batflix;

-- 고객 테이블
create table customer(
    customer_id int PRIMARY KEY,
    customer_name varchar(20),
    customer_phonenum varchar(20),
    customer_email varchar(100),
    customer_addr varchar(100)
);
    
-- 하우스 테이블
create table house(
    house_id int PRIMARY KEY,
    house_status varchar(20),
    crop_type varchar(20),
    start_planting_date date,
    expected_harvest_date date,
    customer_id int,
    foreign key (customer_id) references customer(customer_id) ON DELETE CASCADE
);

-- 센서 및 장치 테이블
create table temp_humidity_sensor(
    th_sensor_id int PRIMARY KEY,
    house_id int,
    foreign key (house_id) references house(house_id) ON DELETE CASCADE
);

create table temp_humidity_values(

    th_value_id int PRIMARY KEY,
    th_sensor_id int,
    temperature decimal(5,2),
    humidity decimal(5,2),
    record_time datetime,
    th_sensor_status varchar(40),
    foreign key (th_sensor_id) references temp_humidity_sensor(th_sensor_id) ON DELETE CASCADE
);

create table light_sensor(
    lx_sensor_id int PRIMARY KEY,
    house_id int,
    foreign key (house_id) references house(house_id) ON DELETE CASCADE 
);

create table light_values(
    lx_value_id int PRIMARY KEY,
    lx_sensor_id int, 
    light_value decimal(10,2),
    record_time datetime,
    lx_sensor_status varchar(40),
    foreign key (lx_sensor_id) references light_sensor(lx_sensor_id) ON DELETE CASCADE 
);

create table soil_moisture_sensor(
    soil_sensor_id int PRIMARY KEY,
    house_id int,
    foreign key (house_id) references house(house_id) ON DELETE CASCADE
);

create table soil_moisture_values(
    soil_value_id int PRIMARY KEY,
    soil_sensor_id int,
    soil_value decimal(5,2),
    record_time datetime,
    soil_sensor_status varchar(40),
    foreign key (soil_sensor_id) references soil_moisture_sensor(soil_sensor_id) ON DELETE CASCADE
);

create table water_level_sensor(
    wl_sensor_id int PRIMARY KEY,
    house_id int,
    foreign key (house_id) references house(house_id) ON DELETE CASCADE
);

create table water_level_values(
    wl_value_id int PRIMARY KEY,
    wl_sensor_id int,
    water_level_value decimal(5,2),
    record_time datetime,
    abnormality_flag varchar(40),
    foreign key (wl_sensor_id) references water_level_sensor(wl_sensor_id) ON DELETE CASCADE
);

create table pump_device(
    pump_device_id int PRIMARY KEY,
    house_id int,
    foreign key (house_id) references house(house_id) ON DELETE CASCADE
);

create table pump_device_history(
    pump_history_id int PRIMARY KEY,
    pump_device_id int,
    pump_status boolean,
    operation_time datetime,
    foreign key (pump_device_id) references pump_device(pump_device_id) ON DELETE CASCADE
);

create table shade_device(
    shade_device_id int PRIMARY KEY,
    house_id int,
    foreign key (house_id) references house(house_id) ON DELETE CASCADE
);

create table shade_device_history(
    shade_history_id int PRIMARY KEY,
    shade_device_id int,
    shade_status boolean,
    operation_time datetime,
    foreign key (shade_device_id) references shade_device(shade_device_id) ON DELETE CASCADE
);
-- 메시지 테이블
create table message(
    message_id int PRIMARY KEY,
    customer_id int,
    message_detail varchar(100),
    sending_time datetime,
    foreign key (customer_id) references customer(customer_id) ON DELETE CASCADE
);


센서, 장치, 고객, 텃밭 테이블로 분리

테이블 세부 분리로 저장공간 낭비 방지

테이블간 연결을 통해 필요한 정보를 효율적으로 조회 가능

온습도 센서 테이블 설명

먼저 센서 정보 테이블과 센서값 테이블로 분리하여 데이터의 정규화와 효율적인 데이터 관리

온습도 센서 테이블은 각 센서의 고유한 정보(예: 센서 ID, 하우스 ID 등)를 저장하여 센서의 정보와 측정값을 독립적으로 관리할 수 있으며, 데이터의 중복을 줄이고 검색 효율성을 높일 수 있음

센서 값 테이블은 각 센서에서 기록된 측정값과 그에 따른 시간, 상태 등을 저장하여 센서의 정보와 측정값을 독립적으로 관리할 수 있으며, 데이터의 중복을 줄이고 검색 효율성을 높일 수 있음

상태(오류인지 정말 나쁜 상태인지)와 측정값을 함께 저장하여 센서의 이상 여부를 쉽게 파악할 수 있도록 설계


3번 고객이 소유한 모든 비닐하우스의 12:00:00의 온도와 습도 조회
각각의 하우스마다 센서가 2개씩 있으니까 2개의 값의 평균을 구해서 하우스별로 평균 온도와 습도를 구하는 쿼리
SELECT h.house_id, -------------------------------------> 하우스 아이디를 조회 
AVG(th.temperature) AS avg_temperature, ----------------> 하우스별 평균 온도 조회
AVG(th.humidity) AS avg_humidity -----------------------> 하우스별 평균 습도 조회
FROM house h -------------------------------------------> house 테이블과 
JOIN temp_humidity_sensor ths ON h.house_id = ths.house_id--> 온습도 센서 테이블을 조인
JOIN temp_humidity_values th ON ths.th_sensor_id = th.th_sensor_id--> 온습도 값 테이블을 조인
WHERE h.customer_id = 3 AND th.record_time = '2026-01-01 12:00:00'--> 고객 아이디가 3이고 기록 시간이 12:00:00인 데이터 조회
GROUP BY h.house_id;    -----------------------------------------------> 하우스 아이디별로 그룹화

또 확인 가능한거

센서 상태가 정상작동이 아닌 모든 센서 조회
SELECT h.house_id, ths.th_sensor_id, ths.th_sensor_status
FROM house h
JOIN temp_humidity_sensor ths ON h.house_id = ths.house_id
WHERE ths.th_sensor_status != '정상작동';   
   ERROR 1054 (42S22): Unknown column 'ths.th_sensor_status' in 'field list'-- > th_sensor_status 컬럼이 존재하지 않아서 발생하는 에러, 컬럼명 확인 필요
다시
SELECT h.house_id, ths.th_sensor_id, ths.th_sensor_status
FROM house h
JOIN temp_humidity_sensor ths ON h.house_id = ths.house_id
JOIN temp_humidity_values th ON ths.th_sensor_id = th.th_sensor_id
WHERE ths.th_sensor_status != '정상작동';

mysql> desc temp_humidity_values
    -> ;
+------------------+--------------+------+-----+---------+-------+
| Field            | Type         | Null | Key | Default | Extra |
+------------------+--------------+------+-----+---------+-------+
| th_value_id      | int          | NO   | PRI | NULL    |       |
| th_sensor_id     | int          | YES  | MUL | NULL    |       |
| temperature      | decimal(5,2) | YES  |     | NULL    |       |
| humidity         | decimal(5,2) | YES  |     | NULL    |       |
| record_time      | datetime     | YES  |     | NULL    |       |
| th_sensor_status | varchar(40)  | YES  |     | NULL    |       |
+------------------+--------------+------+-----+---------+-------+
6 rows in set (0.04 sec)

확인후 다시 조회

SELECT h.house_id, ths.th_sensor_id, th.th_sensor_status -- 텃밭id, 센서id, 센서상태 조회
FROM house h -- house 테이블과
JOIN temp_humidity_sensor ths ON h.house_id = ths.house_id -- 온습도 센서 테이블을 조인
JOIN temp_humidity_values th ON ths.th_sensor_id = th.th_sensor_id  -- 온습도 값 테이블을 조인
WHERE th.th_sensor_status != '정상작동';

중복 제거 

SELECT DISTINCT h.house_id, ths.th_sensor_id, th.th_sensor_status
FROM house h
JOIN temp_humidity_sensor ths ON h.house_id = ths.house_id
JOIN temp_humidity_values th ON ths.th_sensor_id = th.th_sensor_id 
WHERE th.th_sensor_status != '정상작동'; 