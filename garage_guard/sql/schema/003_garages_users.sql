-- +goose Up
-- +goose StatementBegin
CREATE TABLE garages_users(
    garage_id UUID NOT NULL REFERENCES garages(id) ON DELETE CASCADE,
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    PRIMARY KEY (garage_id, user_id),
    is_admin BOOLEAN  NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
    
  
);

CREATE UNIQUE INDEX ON garages_users(garage_id) WHERE is_admin;
-- +goose StatementEND


-- +goose Down
DROP TABLE garages_users;