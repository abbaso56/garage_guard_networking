-- name: CreateUser :one
INSERT INTO users(id, username, pass_hash, created_at, updated_at)
VALUES ($1, $2, $3, $4, $5)
RETURNING *;

-- name: GetUserByUserName :one
SELECT * FROM users WHERE username = $1;

-- name: UpdateUserPassword :one
UPDATE users
SET pass_hash = $2, updated_at = $3
WHERE username = $1
RETURNING *;


-- name: DeleteUser :exec
DELETE FROM users WHERE id = $1;



