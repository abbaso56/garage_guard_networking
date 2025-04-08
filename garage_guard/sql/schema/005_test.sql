-- +goose Up
INSERT INTO users(id, username, pass_hash, created_at, updated_at)
    VALUES(
    '7719e864-cf37-4cb9-8720-a8162a1b4291'::UUID,
    'user',
    '$2a$12$J2o/OZOER7rgEVgwInyKjuNuShF86oBblwYXHq7Z0HtJMOH.zkvbW',
    CURRENT_TIMESTAMP,
    CURRENT_TIMESTAMP
    );

INSERT INTO garages(id,garage_name,device_id, gesture_seq, created_at,updated_at,video_url)
VALUES (
    '0196017b-8138-7408-8b27-3c9453495db2'::UUID,
    'Garage 1',
    '0196017b-eada-79b2-8f1a-ccf15c8979d6'::UUID,
    '1',
    CURRENT_TIMESTAMP,
    CURRENT_TIMESTAMP,
    NULL
);

INSERT INTO garages_users(garage_id, user_id, is_admin,created_at,updated_at)
VALUES (
    '0196017b-8138-7408-8b27-3c9453495db2'::UUID,
    '7719e864-cf37-4cb9-8720-a8162a1b4291'::UUID,
    TRUE,
    CURRENT_TIMESTAMP,
    CURRENT_TIMESTAMP
);

INSERT INTO cars(id, garage_id, license_plate, created_at, updated_at)
VALUES(
    '141f9adb-618a-4cac-acf7-31d3bb6b605e'::UUID,
    '0196017b-8138-7408-8b27-3c9453495db2'::UUID,
    'ABC123',
    CURRENT_TIMESTAMP,
    CURRENT_TIMESTAMP
);


INSERT INTO cars(id, garage_id, license_plate, created_at, updated_at)
VALUES(
    '9dbef4e5-9d36-4347-b2d8-c78dda7f68af'::UUID,
    '0196017b-8138-7408-8b27-3c9453495db2'::UUID,
    'DEF789',
    CURRENT_TIMESTAMP,
    CURRENT_TIMESTAMP
);


-- +goose Down
DELETE FROM cars WHERE id = '141f9adb-618a-4cac-acf7-31d3bb6b605e'::UUID;
DELETE FROM cars WHERE id = '9dbef4e5-9d36-4347-b2d8-c78dda7f68af'::UUID;
DELETE FROM garages_users WHERE user_id = '7719e864-cf37-4cb9-8720-a8162a1b4291'::UUID;
DELETE FROM garages WHERE id = '0196017b-8138-7408-8b27-3c9453495db2'::UUID;
DELETE FROM users WHERE id = '7719e864-cf37-4cb9-8720-a8162a1b4291'::UUID;