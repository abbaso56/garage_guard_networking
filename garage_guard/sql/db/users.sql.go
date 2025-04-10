// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.28.0
// source: users.sql

package db

import (
	"context"

	"github.com/jackc/pgx/v5/pgtype"
)

const createUser = `-- name: CreateUser :one
INSERT INTO users(id, username, pass_hash, created_at, updated_at)
VALUES ($1, $2, $3, $4, $5)
RETURNING id, username, pass_hash, created_at, updated_at
`

type CreateUserParams struct {
	ID        pgtype.UUID
	Username  string
	PassHash  string
	CreatedAt pgtype.Timestamp
	UpdatedAt pgtype.Timestamp
}

func (q *Queries) CreateUser(ctx context.Context, arg CreateUserParams) (User, error) {
	row := q.db.QueryRow(ctx, createUser,
		arg.ID,
		arg.Username,
		arg.PassHash,
		arg.CreatedAt,
		arg.UpdatedAt,
	)
	var i User
	err := row.Scan(
		&i.ID,
		&i.Username,
		&i.PassHash,
		&i.CreatedAt,
		&i.UpdatedAt,
	)
	return i, err
}

const deleteUser = `-- name: DeleteUser :exec
DELETE FROM users WHERE id = $1
`

func (q *Queries) DeleteUser(ctx context.Context, id pgtype.UUID) error {
	_, err := q.db.Exec(ctx, deleteUser, id)
	return err
}

const getUserByUserName = `-- name: GetUserByUserName :one
SELECT id, username, pass_hash, created_at, updated_at FROM users WHERE username = $1
`

func (q *Queries) GetUserByUserName(ctx context.Context, username string) (User, error) {
	row := q.db.QueryRow(ctx, getUserByUserName, username)
	var i User
	err := row.Scan(
		&i.ID,
		&i.Username,
		&i.PassHash,
		&i.CreatedAt,
		&i.UpdatedAt,
	)
	return i, err
}

const updateUserPassword = `-- name: UpdateUserPassword :one
UPDATE users
SET pass_hash = $2, updated_at = $3
WHERE username = $1
RETURNING id, username, pass_hash, created_at, updated_at
`

type UpdateUserPasswordParams struct {
	Username  string
	PassHash  string
	UpdatedAt pgtype.Timestamp
}

func (q *Queries) UpdateUserPassword(ctx context.Context, arg UpdateUserPasswordParams) (User, error) {
	row := q.db.QueryRow(ctx, updateUserPassword, arg.Username, arg.PassHash, arg.UpdatedAt)
	var i User
	err := row.Scan(
		&i.ID,
		&i.Username,
		&i.PassHash,
		&i.CreatedAt,
		&i.UpdatedAt,
	)
	return i, err
}
