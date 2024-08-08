CREATE TABLE IF NOT EXISTS rooms(
"id" uuid PRIMARY KEY NOT DEFAULT gen_random_uiid(),
"theme" VARCHAR(255) NOT NULL
)
-- Write your migrate up statements here

---- create above / drop below ----

-- Write your migrate down statements here. If this migration is irreversible
-- Then delete the separator line above.
DROP TABLE IF EXISTS rooms;