
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

create table message(
    message_id int PRIMARY KEY,
    customer_id int,
    message_detail varchar(100),
    sending_time datetime,
    foreign key (customer_id) references customer(customer_id) ON DELETE CASCADE
);


