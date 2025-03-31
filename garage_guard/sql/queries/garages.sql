
-- name: CreateGarage :one
INSERT INTO garages(id,garage_name,device_id, gesture_seq, created_at,updated_at,video_url)
VALUES ($1 ,$2, $3, $4, $5,$6,$7)
RETURNING *;

-- name: GetGarageById :one
SELECT * FROM garages WHERE id = $1;


-- name: UpdateGarageDevice :one
UPDATE garages
SET device_id = $2, updated_at = $3
WHERE id = $1
RETURNING *;

-- name: UpdateGestureSeq :one
UPDATE garages
SET gesture_seq = $2
WHERE id = $1
RETURNING *;


-- name: DeleteGarage :exec
DELETE FROM garages WHERE id = $1;