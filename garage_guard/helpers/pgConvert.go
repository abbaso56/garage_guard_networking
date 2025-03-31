package helpers

import (
	"time"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgtype"
)

func PgUuid(id uuid.UUID) pgtype.UUID {
	pgId := pgtype.UUID{}
	pgId.Scan(id.String())
	return pgId
}

func PgTime(t time.Time) pgtype.Timestamp {
	p := pgtype.Timestamp{}
	p.Scan(t)
	return p
}
