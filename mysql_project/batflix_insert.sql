-- 고객 / 하우스 초기 데이터
insert into customer values (1, '홍길동', '010-1234-5678', 'jildong@gmail.com', '서울시 강남구');
insert into customer values (2, '김철수', '010-2345-6789', 'chursu@naver.com', '대전시 유성구');
insert into customer values (3, '이영희', '010-3456-7890', 'younghee@gmail.com', '세종시 조치원읍');

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

-- 센서 등록 (디바이스/센서 목록)
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

insert into shade_device values (1, 1);
insert into shade_device values (2, 1);
insert into shade_device values (3, 2);
insert into shade_device values (4, 2);
insert into shade_device values (5, 3);
insert into shade_device values (6, 3);
insert into shade_device values (7, 4);
insert into shade_device values (8, 4);
insert into shade_device values (9, 5);
insert into shade_device values (10, 5);
insert into shade_device values (11, 6);
insert into shade_device values (12, 6);
insert into shade_device values (13, 7);
insert into shade_device values (14, 7);
insert into shade_device values (15, 8);
insert into shade_device values (16, 8);
insert into shade_device values (17, 9);
insert into shade_device values (18, 9);
insert into shade_device values (19, 10);
insert into shade_device values (20, 10);

-- pump / shade history (이력)
insert into pump_device_history values (1, 1, 0, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into pump_device_history values (2, 1, 1, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into pump_device_history values (3, 2, 0, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into pump_device_history values (4, 2, 0, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into pump_device_history values (5, 3, 0, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into pump_device_history values (6, 3, 0, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into pump_device_history values (7, 4, 0, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into pump_device_history values (8, 4, 0, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into pump_device_history values (9, 5, 0, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into pump_device_history values (10, 5, 0, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into pump_device_history values (11, 6, 0, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into pump_device_history values (12, 6, 0, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into pump_device_history values (13, 7, 0, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into pump_device_history values (14, 7, 0, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into pump_device_history values (15, 8, 0, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into pump_device_history values (16, 8, 0, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into pump_device_history values (17, 9, 0, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into pump_device_history values (18, 9, 0, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into pump_device_history values (19, 10, 0, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into pump_device_history values (20, 10, 0, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));

insert into shade_device_history values (1, 1, 1, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into shade_device_history values (2, 1, 1, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into shade_device_history values (3, 2, 1, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into shade_device_history values (4, 2, 1, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into shade_device_history values (5, 3, 1, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into shade_device_history values (6, 3, 1, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into shade_device_history values (7, 4, 1, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into shade_device_history values (8, 4, 1, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into shade_device_history values (9, 5, 1, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into shade_device_history values (10, 5, 1, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into shade_device_history values (11, 6, 1, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into shade_device_history values (12, 6, 1, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into shade_device_history values (13, 7, 0, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into shade_device_history values (14, 7, 0, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into shade_device_history values (15, 8, 1, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into shade_device_history values (16, 8, 1, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into shade_device_history values (17, 9, 1, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into shade_device_history values (18, 9, 1, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into shade_device_history values (19, 10, 1, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));
insert into shade_device_history values (20, 10, 1, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'));

-- 기존에 준비된 온습도값 10세트 (20센서 x 10타임 = 200행)
insert into temp_humidity_values values (1, 1, 25.00, 60.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동'); 
insert into temp_humidity_values values (2, 2, 24.50, 58.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (3, 3, 26.00, 65.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (4, 4, 25.50, 63.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (5, 5, 28.00, 70.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (6, 6, 27.50, 68.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (7, 7, 25.40, 62.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (8, 8, 24.90, 59.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (9, 9, 26.20, 67.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (10, 10, 25.80, 64.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (11, 11, 27.00, 69.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (12, 12, 26.50, 66.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (13, 13, 24.80, 61.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (14, 14, 24.30, 57.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (15, 15, -211.12, 13.02, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '오류 예상');
insert into temp_humidity_values values (16, 16, 25.00, 60.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (17, 17, 50.00, 5.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '오류 혹은 이상고온 예상');
insert into temp_humidity_values values (18, 18, 49.00, 4.00, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '오류 혹은 이상고온 예상');
insert into temp_humidity_values values (19, 19, null, null, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '미사용');
insert into temp_humidity_values values (20, 20, null, null, STR_TO_DATE('2026-01-01 12:00:00', '%Y-%m-%d %H:%i:%s'), '미사용');

insert into temp_humidity_values values (21, 1, 25.10, 60.30, STR_TO_DATE('2026-01-01 12:00:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (22, 2, 24.60, 58.20, STR_TO_DATE('2026-01-01 12:00:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (23, 3, 26.10, 65.10, STR_TO_DATE('2026-01-01 12:00:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (24, 4, 25.60, 63.20, STR_TO_DATE('2026-01-01 12:00:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (25, 5, 28.10, 70.20, STR_TO_DATE('2026-01-01 12:00:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (26, 6, 27.60, 68.10, STR_TO_DATE('2026-01-01 12:00:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (27, 7, 25.50, 62.20, STR_TO_DATE('2026-01-01 12:00:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (28, 8, 25.00, 59.10, STR_TO_DATE('2026-01-01 12:00:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (29, 9, 26.30, 67.10, STR_TO_DATE('2026-01-01 12:00:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (30, 10, 25.90, 64.20, STR_TO_DATE('2026-01-01 12:00:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (31, 11, 27.10, 69.20, STR_TO_DATE('2026-01-01 12:00:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (32, 12, 26.60, 66.10, STR_TO_DATE('2026-01-01 12:00:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (33, 13, 24.90, 61.20, STR_TO_DATE('2026-01-01 12:00:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (34, 14, 24.40, 57.10, STR_TO_DATE('2026-01-01 12:00:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (35, 15, -211.00, 13.10, STR_TO_DATE('2026-01-01 12:00:30', '%Y-%m-%d %H:%i:%s'), '오류 예상');
insert into temp_humidity_values values (36, 16, 25.10, 60.10, STR_TO_DATE('2026-01-01 12:00:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (37, 17, 50.20, 5.20, STR_TO_DATE('2026-01-01 12:00:30', '%Y-%m-%d %H:%i:%s'), '오류 혹은 이상고온 예상');
insert into temp_humidity_values values (38, 18, 49.10, 4.10, STR_TO_DATE('2026-01-01 12:00:30', '%Y-%m-%d %H:%i:%s'), '오류 혹은 이상고온 예상');
insert into temp_humidity_values values (39, 19, null, null, STR_TO_DATE('2026-01-01 12:00:30', '%Y-%m-%d %H:%i:%s'), '미사용');
insert into temp_humidity_values values (40, 20, null, null, STR_TO_DATE('2026-01-01 12:00:30', '%Y-%m-%d %H:%i:%s'), '미사용');

insert into temp_humidity_values values (41, 1, 25.00, 60.10, STR_TO_DATE('2026-01-01 12:01:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (42, 2, 24.55, 58.10, STR_TO_DATE('2026-01-01 12:01:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (43, 3, 26.00, 65.00, STR_TO_DATE('2026-01-01 12:01:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (44, 4, 25.55, 63.00, STR_TO_DATE('2026-01-01 12:01:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (45, 5, 28.00, 70.00, STR_TO_DATE('2026-01-01 12:01:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (46, 6, 27.55, 68.00, STR_TO_DATE('2026-01-01 12:01:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (47, 7, 25.45, 62.00, STR_TO_DATE('2026-01-01 12:01:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (48, 8, 24.95, 59.00, STR_TO_DATE('2026-01-01 12:01:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (49, 9, 26.25, 67.00, STR_TO_DATE('2026-01-01 12:01:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (50, 10, 25.85, 64.00, STR_TO_DATE('2026-01-01 12:01:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (51, 11, 27.05, 69.00, STR_TO_DATE('2026-01-01 12:01:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (52, 12, 26.50, 66.00, STR_TO_DATE('2026-01-01 12:01:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (53, 13, 24.85, 61.00, STR_TO_DATE('2026-01-01 12:01:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (54, 14, 24.35, 57.00, STR_TO_DATE('2026-01-01 12:01:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (55, 15, -210.50, 13.50, STR_TO_DATE('2026-01-01 12:01:00', '%Y-%m-%d %H:%i:%s'), '오류 예상');
insert into temp_humidity_values values (56, 16, 25.05, 60.20, STR_TO_DATE('2026-01-01 12:01:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (57, 17, 50.10, 5.10, STR_TO_DATE('2026-01-01 12:01:00', '%Y-%m-%d %H:%i:%s'), '오류 혹은 이상고온 예상');
insert into temp_humidity_values values (58, 18, 49.20, 4.20, STR_TO_DATE('2026-01-01 12:01:00', '%Y-%m-%d %H:%i:%s'), '오류 혹은 이상고온 예상');
insert into temp_humidity_values values (59, 19, null, null, STR_TO_DATE('2026-01-01 12:01:00', '%Y-%m-%d %H:%i:%s'), '미사용');
insert into temp_humidity_values values (60, 20, null, null, STR_TO_DATE('2026-01-01 12:01:00', '%Y-%m-%d %H:%i:%s'), '미사용');
 
-- time 4: 12:01:30 (계속된 작은 변동)
insert into temp_humidity_values values (61, 1, 25.05, 60.20, STR_TO_DATE('2026-01-01 12:01:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (62, 2, 24.60, 58.05, STR_TO_DATE('2026-01-01 12:01:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (63, 3, 26.05, 65.05, STR_TO_DATE('2026-01-01 12:01:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (64, 4, 25.50, 63.10, STR_TO_DATE('2026-01-01 12:01:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (65, 5, 28.05, 70.10, STR_TO_DATE('2026-01-01 12:01:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (66, 6, 27.60, 68.05, STR_TO_DATE('2026-01-01 12:01:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (67, 7, 25.48, 62.10, STR_TO_DATE('2026-01-01 12:01:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (68, 8, 24.98, 59.05, STR_TO_DATE('2026-01-01 12:01:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (69, 9, 26.22, 67.05, STR_TO_DATE('2026-01-01 12:01:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (70, 10, 25.88, 64.10, STR_TO_DATE('2026-01-01 12:01:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (71, 11, 27.08, 69.10, STR_TO_DATE('2026-01-01 12:01:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (72, 12, 26.55, 66.05, STR_TO_DATE('2026-01-01 12:01:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (73, 13, 24.88, 61.05, STR_TO_DATE('2026-01-01 12:01:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (74, 14, 24.32, 57.05, STR_TO_DATE('2026-01-01 12:01:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (75, 15, -210.80, 13.20, STR_TO_DATE('2026-01-01 12:01:30', '%Y-%m-%d %H:%i:%s'), '오류 예상');
insert into temp_humidity_values values (76, 16, 25.02, 60.00, STR_TO_DATE('2026-01-01 12:01:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (77, 17, 50.30, 5.30, STR_TO_DATE('2026-01-01 12:01:30', '%Y-%m-%d %H:%i:%s'), '오류 혹은 이상고온 예상');
insert into temp_humidity_values values (78, 18, 49.05, 4.05, STR_TO_DATE('2026-01-01 12:01:30', '%Y-%m-%d %H:%i:%s'), '오류 혹은 이상고온 예상');
insert into temp_humidity_values values (79, 19, null, null, STR_TO_DATE('2026-01-01 12:01:30', '%Y-%m-%d %H:%i:%s'), '미사용');
insert into temp_humidity_values values (80, 20, null, null, STR_TO_DATE('2026-01-01 12:01:30', '%Y-%m-%d %H:%i:%s'), '미사용');

-- time 5: 12:02:00
insert into temp_humidity_values values (81, 1, 25.00, 60.00, STR_TO_DATE('2026-01-01 12:02:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (82, 2, 24.65, 58.20, STR_TO_DATE('2026-01-01 12:02:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (83, 3, 26.00, 65.00, STR_TO_DATE('2026-01-01 12:02:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (84, 4, 25.45, 63.00, STR_TO_DATE('2026-01-01 12:02:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (85, 5, 28.00, 70.00, STR_TO_DATE('2026-01-01 12:02:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (86, 6, 27.55, 68.10, STR_TO_DATE('2026-01-01 12:02:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (87, 7, 25.40, 62.05, STR_TO_DATE('2026-01-01 12:02:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (88, 8, 24.90, 59.10, STR_TO_DATE('2026-01-01 12:02:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (89, 9, 26.20, 67.00, STR_TO_DATE('2026-01-01 12:02:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (90, 10, 25.80, 64.10, STR_TO_DATE('2026-01-01 12:02:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (91, 11, 27.00, 69.00, STR_TO_DATE('2026-01-01 12:02:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (92, 12, 26.50, 66.10, STR_TO_DATE('2026-01-01 12:02:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (93, 13, 24.80, 61.10, STR_TO_DATE('2026-01-01 12:02:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (94, 14, 24.35, 57.05, STR_TO_DATE('2026-01-01 12:02:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (95, 15, -210.60, 13.30, STR_TO_DATE('2026-01-01 12:02:00', '%Y-%m-%d %H:%i:%s'), '오류 예상');
insert into temp_humidity_values values (96, 16, 25.00, 60.30, STR_TO_DATE('2026-01-01 12:02:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (97, 17, 50.00, 5.00, STR_TO_DATE('2026-01-01 12:02:00', '%Y-%m-%d %H:%i:%s'), '오류 혹은 이상고온 예상');
insert into temp_humidity_values values (98, 18, 49.20, 4.20, STR_TO_DATE('2026-01-01 12:02:00', '%Y-%m-%d %H:%i:%s'), '오류 혹은 이상고온 예상');
insert into temp_humidity_values values (99, 19, null, null, STR_TO_DATE('2026-01-01 12:02:00', '%Y-%m-%d %H:%i:%s'), '미사용');
insert into temp_humidity_values values (100, 20, null, null, STR_TO_DATE('2026-01-01 12:02:00', '%Y-%m-%d %H:%i:%s'), '미사용');

-- time 6: 12:02:30
insert into temp_humidity_values values (101, 1, 25.10, 60.15, STR_TO_DATE('2026-01-01 12:02:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (102, 2, 24.70, 58.10, STR_TO_DATE('2026-01-01 12:02:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (103, 3, 26.15, 65.05, STR_TO_DATE('2026-01-01 12:02:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (104, 4, 25.65, 63.15, STR_TO_DATE('2026-01-01 12:02:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (105, 5, 28.10, 70.05, STR_TO_DATE('2026-01-01 12:02:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (106, 6, 27.65, 68.10, STR_TO_DATE('2026-01-01 12:02:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (107, 7, 25.55, 62.20, STR_TO_DATE('2026-01-01 12:02:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (108, 8, 25.05, 59.20, STR_TO_DATE('2026-01-01 12:02:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (109, 9, 26.30, 67.15, STR_TO_DATE('2026-01-01 12:02:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (110, 10, 25.95, 64.25, STR_TO_DATE('2026-01-01 12:02:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (111, 11, 27.15, 69.20, STR_TO_DATE('2026-01-01 12:02:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (112, 12, 26.70, 66.20, STR_TO_DATE('2026-01-01 12:02:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (113, 13, 24.95, 61.30, STR_TO_DATE('2026-01-01 12:02:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (114, 14, 24.45, 57.20, STR_TO_DATE('2026-01-01 12:02:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (115, 15, -210.40, 13.40, STR_TO_DATE('2026-01-01 12:02:30', '%Y-%m-%d %H:%i:%s'), '오류 예상');
insert into temp_humidity_values values (116, 16, 25.08, 60.25, STR_TO_DATE('2026-01-01 12:02:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (117, 17, 50.40, 5.40, STR_TO_DATE('2026-01-01 12:02:30', '%Y-%m-%d %H:%i:%s'), '오류 혹은 이상고온 예상');
insert into temp_humidity_values values (118, 18, 49.30, 4.25, STR_TO_DATE('2026-01-01 12:02:30', '%Y-%m-%d %H:%i:%s'), '오류 혹은 이상고온 예상');
insert into temp_humidity_values values (119, 19, null, null, STR_TO_DATE('2026-01-01 12:02:30', '%Y-%m-%d %H:%i:%s'), '미사용');
insert into temp_humidity_values values (120, 20, null, null, STR_TO_DATE('2026-01-01 12:02:30', '%Y-%m-%d %H:%i:%s'), '미사용');

-- time 7: 12:03:00
insert into temp_humidity_values values (121, 1, 24.95, 60.05, STR_TO_DATE('2026-01-01 12:03:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (122, 2, 24.55, 58.00, STR_TO_DATE('2026-01-01 12:03:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (123, 3, 26.00, 64.95, STR_TO_DATE('2026-01-01 12:03:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (124, 4, 25.50, 63.00, STR_TO_DATE('2026-01-01 12:03:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (125, 5, 27.95, 69.90, STR_TO_DATE('2026-01-01 12:03:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (126, 6, 27.50, 68.00, STR_TO_DATE('2026-01-01 12:03:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (127, 7, 25.35, 62.00, STR_TO_DATE('2026-01-01 12:03:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (128, 8, 24.85, 59.00, STR_TO_DATE('2026-01-01 12:03:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (129, 9, 26.15, 67.00, STR_TO_DATE('2026-01-01 12:03:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (130, 10, 25.75, 64.00, STR_TO_DATE('2026-01-01 12:03:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (131, 11, 27.00, 69.00, STR_TO_DATE('2026-01-01 12:03:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (132, 12, 26.45, 66.00, STR_TO_DATE('2026-01-01 12:03:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (133, 13, 24.80, 61.00, STR_TO_DATE('2026-01-01 12:03:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (134, 14, 24.30, 57.00, STR_TO_DATE('2026-01-01 12:03:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (135, 15, -210.20, 13.25, STR_TO_DATE('2026-01-01 12:03:00', '%Y-%m-%d %H:%i:%s'), '오류 예상');
insert into temp_humidity_values values (136, 16, 25.00, 60.10, STR_TO_DATE('2026-01-01 12:03:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (137, 17, 50.10, 5.15, STR_TO_DATE('2026-01-01 12:03:00', '%Y-%m-%d %H:%i:%s'), '오류 혹은 이상고온 예상');
insert into temp_humidity_values values (138, 18, 49.15, 4.10, STR_TO_DATE('2026-01-01 12:03:00', '%Y-%m-%d %H:%i:%s'), '오류 혹은 이상고온 예상');
insert into temp_humidity_values values (139, 19, null, null, STR_TO_DATE('2026-01-01 12:03:00', '%Y-%m-%d %H:%i:%s'), '미사용');
insert into temp_humidity_values values (140, 20, null, null, STR_TO_DATE('2026-01-01 12:03:00', '%Y-%m-%d %H:%i:%s'), '미사용');

-- time 8: 12:03:30
insert into temp_humidity_values values (141, 1, 25.05, 60.25, STR_TO_DATE('2026-01-01 12:03:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (142, 2, 24.70, 58.15, STR_TO_DATE('2026-01-01 12:03:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (143, 3, 26.10, 65.10, STR_TO_DATE('2026-01-01 12:03:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (144, 4, 25.60, 63.20, STR_TO_DATE('2026-01-01 12:03:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (145, 5, 28.10, 70.20, STR_TO_DATE('2026-01-01 12:03:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (146, 6, 27.60, 68.15, STR_TO_DATE('2026-01-01 12:03:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (147, 7, 25.50, 62.25, STR_TO_DATE('2026-01-01 12:03:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (148, 8, 25.00, 59.25, STR_TO_DATE('2026-01-01 12:03:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (149, 9, 26.25, 67.20, STR_TO_DATE('2026-01-01 12:03:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (150, 10, 25.90, 64.30, STR_TO_DATE('2026-01-01 12:03:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (151, 11, 27.10, 69.30, STR_TO_DATE('2026-01-01 12:03:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (152, 12, 26.60, 66.30, STR_TO_DATE('2026-01-01 12:03:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (153, 13, 24.95, 61.25, STR_TO_DATE('2026-01-01 12:03:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (154, 14, 24.40, 57.15, STR_TO_DATE('2026-01-01 12:03:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (155, 15, -210.10, 13.35, STR_TO_DATE('2026-01-01 12:03:30', '%Y-%m-%d %H:%i:%s'), '오류 예상');
insert into temp_humidity_values values (156, 16, 25.12, 60.20, STR_TO_DATE('2026-01-01 12:03:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (157, 17, 50.20, 5.25, STR_TO_DATE('2026-01-01 12:03:30', '%Y-%m-%d %H:%i:%s'), '오류 혹은 이상고온 예상');
insert into temp_humidity_values values (158, 18, 49.25, 4.15, STR_TO_DATE('2026-01-01 12:03:30', '%Y-%m-%d %H:%i:%s'), '오류 혹은 이상고온 예상');
insert into temp_humidity_values values (159, 19, null, null, STR_TO_DATE('2026-01-01 12:03:30', '%Y-%m-%d %H:%i:%s'), '미사용');
insert into temp_humidity_values values (160, 20, null, null, STR_TO_DATE('2026-01-01 12:03:30', '%Y-%m-%d %H:%i:%s'), '미사용');

-- time 9: 12:04:00
insert into temp_humidity_values values (161, 1, 25.00, 60.10, STR_TO_DATE('2026-01-01 12:04:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (162, 2, 24.60, 58.05, STR_TO_DATE('2026-01-01 12:04:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (163, 3, 26.05, 65.00, STR_TO_DATE('2026-01-01 12:04:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (164, 4, 25.55, 63.05, STR_TO_DATE('2026-01-01 12:04:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (165, 5, 28.05, 70.00, STR_TO_DATE('2026-01-01 12:04:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (166, 6, 27.55, 68.10, STR_TO_DATE('2026-01-01 12:04:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (167, 7, 25.45, 62.10, STR_TO_DATE('2026-01-01 12:04:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (168, 8, 24.95, 59.05, STR_TO_DATE('2026-01-01 12:04:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (169, 9, 26.20, 67.10, STR_TO_DATE('2026-01-01 12:04:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (170, 10, 25.85, 64.05, STR_TO_DATE('2026-01-01 12:04:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (171, 11, 27.05, 69.05, STR_TO_DATE('2026-01-01 12:04:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (172, 12, 26.50, 66.05, STR_TO_DATE('2026-01-01 12:04:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (173, 13, 24.85, 61.00, STR_TO_DATE('2026-01-01 12:04:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (174, 14, 24.35, 57.00, STR_TO_DATE('2026-01-01 12:04:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (175, 15, -210.30, 13.20, STR_TO_DATE('2026-01-01 12:04:00', '%Y-%m-%d %H:%i:%s'), '오류 예상');
insert into temp_humidity_values values (176, 16, 25.05, 60.15, STR_TO_DATE('2026-01-01 12:04:00', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (177, 17, 50.15, 5.15, STR_TO_DATE('2026-01-01 12:04:00', '%Y-%m-%d %H:%i:%s'), '오류 혹은 이상고온 예상');
insert into temp_humidity_values values (178, 18, 49.20, 4.10, STR_TO_DATE('2026-01-01 12:04:00', '%Y-%m-%d %H:%i:%s'), '오류 혹은 이상고온 예상');
insert into temp_humidity_values values (179, 19, null, null, STR_TO_DATE('2026-01-01 12:04:00', '%Y-%m-%d %H:%i:%s'), '미사용');
insert into temp_humidity_values values (180, 20, null, null, STR_TO_DATE('2026-01-01 12:04:00', '%Y-%m-%d %H:%i:%s'), '미사용');

-- time 10: 12:04:30
insert into temp_humidity_values values (181, 1, 25.00, 60.00, STR_TO_DATE('2026-01-01 12:04:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (182, 2, 24.60, 58.00, STR_TO_DATE('2026-01-01 12:04:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (183, 3, 26.00, 65.00, STR_TO_DATE('2026-01-01 12:04:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (184, 4, 25.50, 63.00, STR_TO_DATE('2026-01-01 12:04:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (185, 5, 28.00, 70.00, STR_TO_DATE('2026-01-01 12:04:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (186, 6, 27.50, 68.00, STR_TO_DATE('2026-01-01 12:04:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (187, 7, 25.40, 62.00, STR_TO_DATE('2026-01-01 12:04:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (188, 8, 24.90, 59.00, STR_TO_DATE('2026-01-01 12:04:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (189, 9, 26.20, 67.00, STR_TO_DATE('2026-01-01 12:04:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (190, 10, 25.80, 64.00, STR_TO_DATE('2026-01-01 12:04:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (191, 11, 27.00, 69.00, STR_TO_DATE('2026-01-01 12:04:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (192, 12, 26.50, 66.00, STR_TO_DATE('2026-01-01 12:04:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (193, 13, 24.80, 61.00, STR_TO_DATE('2026-01-01 12:04:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (194, 14, 24.30, 57.00, STR_TO_DATE('2026-01-01 12:04:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (195, 15, -210.00, 13.00, STR_TO_DATE('2026-01-01 12:04:30', '%Y-%m-%d %H:%i:%s'), '오류 예상');
insert into temp_humidity_values values (196, 16, 25.00, 60.00, STR_TO_DATE('2026-01-01 12:04:30', '%Y-%m-%d %H:%i:%s'), '정상작동');
insert into temp_humidity_values values (197, 17, 50.00, 5.00, STR_TO_DATE('2026-01-01 12:04:30', '%Y-%m-%d %H:%i:%s'), '오류 혹은 이상고온 예상');
insert into temp_humidity_values values (198, 18, 49.00, 4.00, STR_TO_DATE('2026-01-01 12:04:30', '%Y-%m-%d %H:%i:%s'), '오류 혹은 이상고온 예상');
insert into temp_humidity_values values (199, 19, null, null, STR_TO_DATE('2026-01-01 12:04:30', '%Y-%m-%d %H:%i:%s'), '미사용');
insert into temp_humidity_values values (200, 20, null, null, STR_TO_DATE('2026-01-01 12:04:30', '%Y-%m-%d %H:%i:%s'), '미사용');


-- 가상 조도값 10세트 (20센서 x 10타임 = 200행)
-- 가상 조도값 10세트 (20센서 x 10타임 = 200행)
-- timestamps: 12:00:00 ~ 12:04:30, 30초 간격

-- light_values (lx_value_id, lx_sensor_id, light_value, record_time, lx_sensor_status)

-- time 1: 12:00:00
insert into light_values values (1, 1, 300.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (2, 2, 302.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (3, 3, 304.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (4, 4, 306.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (5, 5, 308.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (6, 6, 310.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (7, 7, 312.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (8, 8, 314.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (9, 9, 316.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (10, 10, 318.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (11, 11, 320.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (12, 12, 322.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (13, 13, 324.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (14, 14, 326.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (15, 15, 328.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (16, 16, 330.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (17, 17, 332.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (18, 18, 334.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (19, 19, 336.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (20, 20, 338.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');

-- time 2: 12:00:30 (작은 변화)
insert into light_values values (21, 1, 300.50, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (22, 2, 302.50, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (23, 3, 304.50, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (24, 4, 306.50, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (25, 5, 308.50, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (26, 6, 310.50, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (27, 7, 312.50, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (28, 8, 314.50, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (29, 9, 316.50, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (30, 10, 318.50, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (31, 11, 320.50, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (32, 12, 322.50, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (33, 13, 324.50, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (34, 14, 326.50, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (35, 15, 328.50, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (36, 16, 330.50, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (37, 17, 332.50, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (38, 18, 334.50, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (39, 19, 336.50, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (40, 20, 338.50, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');

-- time 3: 12:01:00 (작게 하락)
insert into light_values values (41, 1, 299.80, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (42, 2, 301.80, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (43, 3, 303.80, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (44, 4, 305.80, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (45, 5, 307.80, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (46, 6, 309.80, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (47, 7, 311.80, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (48, 8, 313.80, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (49, 9, 315.80, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (50, 10, 317.80, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (51, 11, 319.80, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (52, 12, 321.80, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (53, 13, 323.80, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (54, 14, 325.80, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (55, 15, 327.80, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (56, 16, 329.80, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (57, 17, 331.80, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (58, 18, 333.80, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (59, 19, 335.80, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (60, 20, 337.80, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');

-- time 4: 12:01:30 (작게 상승)
insert into light_values values (61, 1, 300.30, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (62, 2, 302.30, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (63, 3, 304.30, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (64, 4, 306.30, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (65, 5, 308.30, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (66, 6, 310.30, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (67, 7, 312.30, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (68, 8, 314.30, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (69, 9, 316.30, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (70, 10, 318.30, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (71, 11, 320.30, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (72, 12, 322.30, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (73, 13, 324.30, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (74, 14, 326.30, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (75, 15, 328.30, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (76, 16, 330.30, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (77, 17, 332.30, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (78, 18, 334.30, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (79, 19, 336.30, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (80, 20, 338.30, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');

-- time 5: 12:02:00 (작게 하락)
insert into light_values values (81, 1, 299.90, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (82, 2, 301.90, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (83, 3, 303.90, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (84, 4, 305.90, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (85, 5, 307.90, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (86, 6, 309.90, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (87, 7, 311.90, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (88, 8, 313.90, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (89, 9, 315.90, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (90, 10, 317.90, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (91, 11, 319.90, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (92, 12, 321.90, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (93, 13, 323.90, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (94, 14, 325.90, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (95, 15, 327.90, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (96, 16, 329.90, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (97, 17, 331.90, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (98, 18, 333.90, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (99, 19, 335.90, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (100, 20, 337.90, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');

-- time 6: 12:02:30 (작게 상승)
insert into light_values values (101, 1, 300.40, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (102, 2, 302.40, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (103, 3, 304.40, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (104, 4, 306.40, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (105, 5, 308.40, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (106, 6, 310.40, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (107, 7, 312.40, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (108, 8, 314.40, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (109, 9, 316.40, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (110, 10, 318.40, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (111, 11, 320.40, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (112, 12, 322.40, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (113, 13, 324.40, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (114, 14, 326.40, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (115, 15, 328.40, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (116, 16, 330.40, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (117, 17, 332.40, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (118, 18, 334.40, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (119, 19, 336.40, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (120, 20, 338.40, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');

-- time 7: 12:03:00 (작게 하락)
insert into light_values values (121, 1, 299.70, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (122, 2, 301.70, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (123, 3, 303.70, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (124, 4, 305.70, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (125, 5, 307.70, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (126, 6, 309.70, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (127, 7, 311.70, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (128, 8, 313.70, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (129, 9, 315.70, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (130, 10, 317.70, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (131, 11, 319.70, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (132, 12, 321.70, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (133, 13, 323.70, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (134, 14, 325.70, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (135, 15, 327.70, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (136, 16, 329.70, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (137, 17, 331.70, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (138, 18, 333.70, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (139, 19, 335.70, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (140, 20, 337.70, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');

-- time 8: 12:03:30 (약간 상승)
insert into light_values values (141, 1, 300.20, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (142, 2, 302.20, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (143, 3, 304.20, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (144, 4, 306.20, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (145, 5, 308.20, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (146, 6, 310.20, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (147, 7, 312.20, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (148, 8, 314.20, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (149, 9, 316.20, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (150, 10, 318.20, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (151, 11, 320.20, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (152, 12, 322.20, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (153, 13, 324.20, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (154, 14, 326.20, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (155, 15, 328.20, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (156, 16, 330.20, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (157, 17, 332.20, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (158, 18, 334.20, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (159, 19, 336.20, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (160, 20, 338.20, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');

-- time 9: 12:04:00 (작게 하락)
insert into light_values values (161, 1, 299.90, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (162, 2, 301.90, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (163, 3, 303.90, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (164, 4, 305.90, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (165, 5, 307.90, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (166, 6, 309.90, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (167, 7, 311.90, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (168, 8, 313.90, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (169, 9, 315.90, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (170, 10, 317.90, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (171, 11, 319.90, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (172, 12, 321.90, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (173, 13, 323.90, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (174, 14, 325.90, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (175, 15, 327.90, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (176, 16, 329.90, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (177, 17, 331.90, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (178, 18, 333.90, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (179, 19, 335.90, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (180, 20, 337.90, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');

-- time 10: 12:04:30 (작게 변동)
insert into light_values values (181, 1, 300.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (182, 2, 302.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (183, 3, 304.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (184, 4, 306.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (185, 5, 308.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (186, 6, 310.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (187, 7, 312.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (188, 8, 314.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (189, 9, 316.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (190, 10, 318.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (191, 11, 320.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (192, 12, 322.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (193, 13, 324.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (194, 14, 326.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (195, 15, 328.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (196, 16, 330.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (197, 17, 332.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (198, 18, 334.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (199, 19, 336.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into light_values values (200, 20, 338.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');

-- 가상 토양수분값 10세트 (20센서 x 10타임 = 200행)
-- soil_moisture_values (soil_value_id, soil_sensor_id, soil_value, record_time, soil_sensor_status)

-- base per sensor: 40.00 + (sensor_id-1)*0.5, small offsets over time

-- time 1: 12:00:00
insert into soil_moisture_values values (1, 1, 40.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (2, 2, 40.50, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (3, 3, 41.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (4, 4, 41.50, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (5, 5, 42.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (6, 6, 42.50, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (7, 7, 43.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (8, 8, 43.50, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (9, 9, 44.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (10, 10, 44.50, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (11, 11, 45.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (12, 12, 45.50, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (13, 13, 46.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (14, 14, 46.50, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (15, 15, 47.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (16, 16, 47.50, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (17, 17, 48.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (18, 18, 48.50, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (19, 19, 49.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (20, 20, 49.50, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');

-- time 2: 12:00:30 (작은 변화)
insert into soil_moisture_values values (21, 1, 40.20, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (22, 2, 40.70, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (23, 3, 41.10, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (24, 4, 41.80, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (25, 5, 42.10, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (26, 6, 42.60, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (27, 7, 43.10, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (28, 8, 43.35, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (29, 9, 44.05, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (30, 10, 44.40, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (31, 11, 45.10, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (32, 12, 45.60, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (33, 13, 46.05, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (34, 14, 46.30, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (35, 15, 47.10, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (36, 16, 47.45, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (37, 17, 48.05, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (38, 18, 48.40, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (39, 19, 49.10, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (40, 20, 49.65, STR_TO_DATE('2026-01-01 12:00:30','%Y-%m-%d %H:%i:%s'), '정상작동');

-- time 3: 12:01:00 (약간 변동)
insert into soil_moisture_values values (41, 1, 40.10, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (42, 2, 40.60, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (43, 3, 41.05, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (44, 4, 41.70, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (45, 5, 42.05, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (46, 6, 42.55, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (47, 7, 43.05, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (48, 8, 43.40, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (49, 9, 44.00, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (50, 10, 44.60, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (51, 11, 45.05, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (52, 12, 45.70, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (53, 13, 46.10, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (54, 14, 46.50, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (55, 15, 47.05, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (56, 16, 47.50, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (57, 17, 48.10, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (58, 18, 48.35, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (59, 19, 49.05, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (60, 20, 49.40, STR_TO_DATE('2026-01-01 12:01:00','%Y-%m-%d %H:%i:%s'), '정상작동');

-- time 4: 12:01:30
insert into soil_moisture_values values (61, 1, 40.25, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (62, 2, 40.55, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (63, 3, 41.20, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (64, 4, 41.60, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (65, 5, 42.15, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (66, 6, 42.65, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (67, 7, 43.20, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (68, 8, 43.45, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (69, 9, 44.10, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (70, 10, 44.55, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (71, 11, 45.20, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (72, 12, 45.55, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (73, 13, 46.20, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (74, 14, 46.45, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (75, 15, 47.20, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (76, 16, 47.60, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (77, 17, 48.05, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (78, 18, 48.55, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (79, 19, 49.00, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (80, 20, 49.70, STR_TO_DATE('2026-01-01 12:01:30','%Y-%m-%d %H:%i:%s'), '정상작동');

-- time 5: 12:02:00
insert into soil_moisture_values values (81, 1, 40.05, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (82, 2, 40.65, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (83, 3, 41.00, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (84, 4, 41.75, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (85, 5, 42.05, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (86, 6, 42.45, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (87, 7, 43.10, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (88, 8, 43.50, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (89, 9, 44.15, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (90, 10, 44.45, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (91, 11, 45.05, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (92, 12, 45.80, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (93, 13, 46.05, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (94, 14, 46.60, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (95, 15, 47.10, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (96, 16, 47.55, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (97, 17, 48.00, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (98, 18, 48.60, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (99, 19, 49.05, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (100, 20, 49.50, STR_TO_DATE('2026-01-01 12:02:00','%Y-%m-%d %H:%i:%s'), '정상작동');

-- time 6: 12:02:30
insert into soil_moisture_values values (101, 1, 40.15, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (102, 2, 40.75, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (103, 3, 41.10, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (104, 4, 41.80, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (105, 5, 42.20, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (106, 6, 42.60, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (107, 7, 43.15, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (108, 8, 43.55, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (109, 9, 44.05, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (110, 10, 44.65, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (111, 11, 45.15, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (112, 12, 45.65, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (113, 13, 46.20, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (114, 14, 46.55, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (115, 15, 47.05, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (116, 16, 47.70, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (117, 17, 48.10, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (118, 18, 48.45, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (119, 19, 49.20, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (120, 20, 49.55, STR_TO_DATE('2026-01-01 12:02:30','%Y-%m-%d %H:%i:%s'), '정상작동');

-- time 7: 12:03:00
insert into soil_moisture_values values (121, 1, 40.00, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (122, 2, 40.50, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (123, 3, 41.10, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (124, 4, 41.60, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (125, 5, 42.05, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (126, 6, 42.55, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (127, 7, 43.05, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (128, 8, 43.50, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (129, 9, 44.00, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (130, 10, 44.60, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (131, 11, 45.00, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (132, 12, 45.50, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (133, 13, 46.10, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (134, 14, 46.40, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (135, 15, 47.05, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (136, 16, 47.45, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (137, 17, 48.05, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (138, 18, 48.35, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (139, 19, 49.10, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (140, 20, 49.60, STR_TO_DATE('2026-01-01 12:03:00','%Y-%m-%d %H:%i:%s'), '정상작동');

-- time 8: 12:03:30
insert into soil_moisture_values values (141, 1, 40.10, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (142, 2, 40.60, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (143, 3, 41.05, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (144, 4, 41.75, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (145, 5, 42.10, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (146, 6, 42.65, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (147, 7, 43.15, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (148, 8, 43.50, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (149, 9, 44.05, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (150, 10, 44.50, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (151, 11, 45.10, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (152, 12, 45.60, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (153, 13, 46.05, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (154, 14, 46.45, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (155, 15, 47.00, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (156, 16, 47.50, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (157, 17, 48.10, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (158, 18, 48.45, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (159, 19, 49.05, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (160, 20, 49.55, STR_TO_DATE('2026-01-01 12:03:30','%Y-%m-%d %H:%i:%s'), '정상작동');

-- time 9: 12:04:00
insert into soil_moisture_values values (161, 1, 40.00, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (162, 2, 40.50, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (163, 3, 41.00, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (164, 4, 41.55, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (165, 5, 42.05, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (166, 6, 42.60, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (167, 7, 43.10, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (168, 8, 43.50, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (169, 9, 44.05, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (170, 10, 44.55, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (171, 11, 45.10, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (172, 12, 45.60, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (173, 13, 46.05, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (174, 14, 46.50, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (175, 15, 47.05, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (176, 16, 47.50, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (177, 17, 48.05, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (178, 18, 48.45, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (179, 19, 49.00, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (180, 20, 49.60, STR_TO_DATE('2026-01-01 12:04:00','%Y-%m-%d %H:%i:%s'), '정상작동');

-- time 10: 12:04:30
insert into soil_moisture_values values (181, 1, 40.05, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (182, 2, 40.60, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (183, 3, 41.05, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (184, 4, 41.70, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (185, 5, 42.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (186, 6, 42.60, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (187, 7, 43.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (188, 8, 43.50, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (189, 9, 44.05, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (190, 10, 44.60, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (191, 11, 45.05, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (192, 12, 45.70, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (193, 13, 46.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (194, 14, 46.50, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (195, 15, 47.10, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (196, 16, 47.60, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (197, 17, 48.05, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (198, 18, 48.45, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (199, 19, 49.05, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into soil_moisture_values values (200, 20, 49.60, STR_TO_DATE('2026-01-01 12:04:30','%Y-%m-%d %H:%i:%s'), '정상작동');

-- 가상 수위값 10세트 (20센서 x 10타임 = 200행)
-- water_level_values (water_value_id, water_sensor_id, water_value, record_time, water_sensor_status)
-- 가상 수위값 10세트 (10센서 x 10타임 = 100행)
-- water_level_values (water_value_id, water_sensor_id, water_value, record_time, water_sensor_status)

-- time 1: 12:00:00
insert into water_level_values values (1, 1, 10.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into water_level_values values (2, 2, 10.50, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into water_level_values values (3, 3, 11.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into water_level_values values (4, 4, 11.50, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into water_level_values values (5, 5, 12.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into water_level_values values (6, 6, 12.50, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into water_level_values values (7, 7, 13.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into water_level_values values (8, 8, 13.50, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into water_level_values values (9, 9, 14.00, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');
insert into water_level_values values (10, 10, 14.50, STR_TO_DATE('2026-01-01 12:00:00','%Y-%m-%d %H:%i:%s'), '정상작동');

