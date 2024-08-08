CREATE TABLE IF NOT EXISTS TABLE messages(
 "id" uuid PRIMARY KEY NOT DEFAULT gen_random_uiid(),
 "room_id" uuid NOT NULL,
 "message" VARCHAR(255)  NOT NULL,
 "reactions_count" BIGINT NOT NULL DEFAULT 0,
 "aswaered" BOOLEAN NOT NULL DEFAULT false

 FOREIGN KEY (room_id) REFERENCES room(id)

)
-- Write your migrate up statements here

---- create above / drop below ----

-- Write your migrate down statements here. If this migration is irreversible
-- Then delete the separator line above.
DROP TABLE EXISTS TABLE messages