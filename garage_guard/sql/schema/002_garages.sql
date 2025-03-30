-- +goose Up
CREATE TABLE garages (
    id UUID PRIMARY KEY,
    garage_name TEXT NOT NULL,
    device_id UUID UNIQUE,
    gesture_seq TEXT,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    video_url TEXT UNIQUE
);



-- +goose Down
DROP TABLE garages;