-- name: CreateGargeUserRelation :one
INSERT INTO garages_users(garage_id, user_id, is_admin,created_at,updated_at)
VALUES ($1, $2, $3, $4, $5)
RETURNING *;


