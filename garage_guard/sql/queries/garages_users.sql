-- name: CreateGargeUserRelation :one
INSERT INTO garages_users(garage_id, user_id, is_admin,created_at,updated_at)
VALUES ($1, $2, $3, $4, $5)
RETURNING *;


-- name: GetGarageNamesByuserId :many
SELECT garages.garage_name, garages.id
FROM garages 
INNER JOIN garages_users ON garages.id = garages_users.garage_id
WHERE garages_users.user_id = $1
ORDER BY garages.garage_name;

-- name: GetGarageUserRelationByIDS :one
SeLECT * FROM garages_users WHERE garage_id = $1 AND user_id=$2;

