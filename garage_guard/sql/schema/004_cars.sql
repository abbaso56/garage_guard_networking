-- +goose Up
CREATE TABLE cars(
    id UUID PRIMARY KEY,
    garage_id UUID NOT NULL,
    license_plate TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    FOREIGN KEY(garage_id) REFERENCES garages(id) ON DELETE CASCADE
);

-- +goose Down
DROP TABLE cars;