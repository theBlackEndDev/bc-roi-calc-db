-- Deploy bc-roi-calc-db:20210807-1910_Adding_monsters+powerups to pg

BEGIN;

INSERT INTO public.rarity(name, image_link, boost, max_boost)
VALUES('common', 'https://i.ibb.co/6R63ksV/common.png', 1, 2);

INSERT INTO public.rarity(name, image_link, boost, max_boost)
VALUES('uncommon', 'https://i.ibb.co/7nhvQTG/uncommon.png', 2, 4);

INSERT INTO public.rarity(name, image_link, boost, max_boost)
VALUES('rare', 'https://i.ibb.co/vjfkXbk/rare.png', 4, 7);

INSERT INTO public.rarity(name, image_link, boost, max_boost)
VALUES('epic', 'https://i.ibb.co/Gn1GSX2/epic.png', 7, 14);

INSERT INTO public.rarity(name, image_link, boost, max_boost)
VALUES('legendary', 'https://i.ibb.co/Rc9D7Hq/legendary.png', 10, 24);

INSERT INTO public.rarity(name, image_link, boost, max_boost)
VALUES('mythic', 'https://i.ibb.co/jLWgCJ3/mythic.png', 15, 34);

INSERT INTO public.rarity(name, image_link, boost, max_boost)
VALUES('godlike', 'https://i.ibb.co/7SNyvFs/godlike.png', 25, 49);


INSERT INTO public.powerups(name, image_link, boost)
VALUES('common', 'https://i.ibb.co/YDghP2G/common-powerup.png', 1);

INSERT INTO public.powerups(name, image_link, boost)
VALUES('uncommon', 'https://i.ibb.co/XjKm30s/uncommon-powerup.png', 2);

INSERT INTO public.powerups(name, image_link, boost)
VALUES('rare', 'https://i.ibb.co/f0DfzcN/rare-powerup.png', 4);

INSERT INTO public.powerups(name, image_link, boost)
VALUES('epic', 'https://i.ibb.co/93nz5jn/epic-powerup.png', 8);

INSERT INTO public.powerups(name, image_link, boost)
VALUES('legendary', 'https://i.ibb.co/Xzt4qXp/legendary-powerup.png', 10);

INSERT INTO public.powerups(name, image_link, boost)
VALUES('mythic', 'https://i.ibb.co/s1NL6gn/mythic-powerup.png', 15);

INSERT INTO public.powerups(name, image_link, boost)
VALUES('godlike', 'https://i.ibb.co/NSQQ9rm/godlike-powerup.png', 20);

INSERT INTO users(username, password)
VALUES('testaccount', 'password1234');

INSERT INTO monsters(user_id, rarity, level, exp, powerup, boost,
                     powerup_boost, total_boost, gas, rewards, wins, losses)
VALUES(1, 1, 5, 62, 0, 1, 0, 1, null, null, null, null);

COMMIT;
