-- Deploy bc-roi-calc-db:20210807-1905_Adding_creature_tables to pg

BEGIN;

CREATE TABLE public.users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(32) NOT NULL UNIQUE,
    password VARCHAR(64) NOT NULL
);

CREATE TABLE creatures.monsters (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    rarity INTEGER NOT NULL,
    level INTEGER NOT NULL,
    exp INTEGER,
    powerup INTEGER,
    boost INTEGER,
    powerup_boost INTEGER,
    total_boost INTEGER,
    gas NUMERIC(4, 4),
    rewards NUMERIC(5, 2),
    wins INTEGER,
    losses INTEGER
);

ALTER TABLE creatures.monsters ADD CONSTRAINT fk_user_id__id FOREIGN KEY(user_id) REFERENCES public.users(id);

CREATE TABLE creatures.rarity (
    id            SERIAL PRIMARY KEY,
    name          VARCHAR(32),
    image_link    VARCHAR(128),
    boost         INTEGER,
    max_boost     INTEGER
);

CREATE TABLE creatures._monsters__rarity (
    id SERIAL PRIMARY KEY,
    monster_id INTEGER NOT NULL,
    rarity_id INTEGER NOT NULL
);

ALTER TABLE creatures._monsters__rarity ADD CONSTRAINT fk_monster_id__id
    FOREIGN KEY(monster_id) REFERENCES creatures.monsters(id) ON UPDATE CASCADE;

ALTER TABLE creatures._monsters__rarity ADD CONSTRAINT fk_rarity_id__id
    FOREIGN KEY(rarity_id) REFERENCES creatures.rarity(id) ON UPDATE CASCADE;

CREATE TABLE creatures.powerups (
    id            SERIAL PRIMARY KEY,
    name          VARCHAR(32),
    image_link    VARCHAR(128),
    boost         INTEGER
);

CREATE TABLE creatures._monsters__powerups (
    id SERIAL PRIMARY KEY,
    monster_id INTEGER NOT NULL,
    powerup_id INTEGER NOT NULL
);

ALTER TABLE creatures._monsters__powerups ADD CONSTRAINT fk_monster_id__id
    FOREIGN KEY(monster_id) REFERENCES creatures.monsters(id) ON UPDATE CASCADE;

ALTER TABLE creatures._monsters__powerups ADD CONSTRAINT fk_powerup_id__id
    FOREIGN KEY(powerup_id) REFERENCES creatures.powerups(id) ON UPDATE CASCADE;

COMMIT;
