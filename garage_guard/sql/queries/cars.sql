-- name: CreateCar :one
INSERT INTO cars(id, garage_id, license_plate, created_at, updated_at)
VALUES ($1, $2, $3, $4, $5)
RETURNING *;


-- name: GetCar :one
SELECT * FROM cars WHERE id = $1;



-- name: GetCarsByGarageId :many
SELECT * FROM cars WHERE garage_id = $1;


-- name: DeleteCar :exec
DELETE FROM cars WHERE id = $1;