INSERT INTO genres(name)
VALUES('Pop'), ('Rock'), ('R&B'), ('Chanson'), ('Electro'), ('Disco');
INSERT INTO performers(nickname)
VALUES('Michael Jackson'), ('Madonna'), ('Nirvana'), ('Scorpions'), ('D''Angelo'), ('Beyonce'), ('Joe Dassin'), ('Mireille Mathieu'), ('Depeche Mode'), ('Gorillaz'), ('Katy Perry'), ('C. C. Catch');
INSERT INTO performers_genres(performer_id, genre_id)
VALUES(1, 1), (2, 1), (3, 2), (4, 2), (5, 3), (6, 3), (7, 4), (8, 4), (9, 5), (10, 5), (11, 6), (12, 6);
INSERT INTO albums(title, release_year)
VALUES('Thriller', 1982), ('Bad', 1987), ('Like A Prayer', 1989), ('Ray Of Light', 1998), ('Nevermind', 1991), ('In Utero', 1993), ('Blackout', 1982), ('Love At First Sting', 1984), ('Voodoo', 2000), ('Brown Sugar', 1995), ('Beyoncé', 2013), ('4', 2011), ('Joe Dassin', 1975), ('Le jardin du Luxembourg', 1976), ('Made in France', 1967), ('En Direct De L''Olympia', 1966), ('Violator', 1990), ('Songs of Faith and Devotion', 1993), ('Demon Days', 2005), ('Plastic Beach', 2010), ('Teenage Dream', 2010), ('One Of The Boys', 2008), ('Catch The Catch', 1986), ('Welcome To The Heartbreak Hotel', 1986);
INSERT INTO performers_albums(performer_id, album_id)
VALUES(1, 1), (1, 2), (2, 3), (2, 4), (3, 5), (3, 6), (4, 7), (4, 8), (5, 9), (5, 10), (6, 11), (6, 12), (7, 13), (7, 14), (8, 15), (8, 16), (9, 17), (9, 18), (10, 19), (10, 20), (11, 21), (11, 22), (12, 23), (12, 24);
INSERT INTO tracks(track_name, run, in_album_id)
VALUES('Thriller', '5:57', 1), ('Beat it', '4:18', 1), ('Billie Jean', '4:54', 1), ('Bad', '4:07', 2), ('Liberian Girl', '3:53', 2), ('Dirty Diana', '4:52', 2), ('Smooth Criminal', '4:38', 2), ('Like A Prayer', '5:39', 3), ('Spanish Eyes', '5:15', 3), ('Swim', '5:00', 4), ('Ray Of Light', '5:21', 4), ('Frozen', '6:12', 4), ('Smells Like Teen Spirit', '5:01', 5), ('Come As You Are', '3:38', 5), ('Heart-Shaped Box', '4:41', 6), ('Rape Me', '2:50', 6), ('Arizona', '3:56', 7), ('When The Smoke Is Going Down', '3:50', 7), ('Rock You Like a Hurricane', '4:12', 8), ('Still Loving You', '6:26', 8), ('Devil''s Pie', '5:21', 9), ('Playa Playa', '7:07', 9), ('Lady', '5:47', 10), ('Brown Sugar', '4:22', 10), ('Pretty Hurts', '4:17', 11), ('Blow', '5:09', 11), ('Start Over', '3:19', 12), ('I Care', '3:59', 12), ('Et Si Tu N''existais Pas', '3:25', 13), ('Salut', '3:20', 13), ('A Toi', '2:50', 14), ('Comme Disait Valentine', '3:03', 14), ('La Dernière Valse', '3:06', 15), ('La Vieille Barque', '2:40', 15), ('Paris En Colère', '3:03', 16), ('Quand On Revient', '2:43', 16), ('Personal Jesus', '4:55', 17), ('Enjoy The Silence', '6:13', 17), ('I Feel You', '4:35', 18), ('Rush', '4:41', 18), ('Intro', '1:03', 19), ('Feel Good Inc.', '3:41', 19), ('Dare', '4:04', 19), ('Stylo', '4:30', 20), ('Rhinestone Eyes', '3:20', 20), ('Firework', '3:48', 21), ('Last Friday Night (T.G.I.F.)', '3:50', 21), ('Hot N Cold', '3:40', 22), ('I Kissed a Girl', '3:00', 22), ('''Cause You Are Young', '4:43', 23), ('Jump In My Car', '4:33', 23), ('Heartbreak Hotel', '3:33', 24), ('Picture Blue Eyes', '3:30', 24);
INSERT INTO songsters(title, release_year)
VALUES('Top 10', 2020), ('Rock Hits', 2019), ('Pop Hits 80''s', 2010), ('Best From US', 2011), ('Hen-Party', 2018), ('Dance Dance', 2001), ('While Driving', 2014), ('Workout', 2005);
INSERT INTO songsters_tracks(songster_id, track_id)
VALUES(1, 7), (1, 13), (1, 20), (1, 24), (1, 29), (1, 31), (1, 37), (1, 40), (1, 43), (1, 50), (2, 14), (2, 17), (2, 18), (3, 3), (3, 9), (3, 51), (4, 4), (4, 12), (5, 26), (5, 47), (5, 49), (6, 2), (6, 8), (6, 52), (7, 12), (7, 38), (7, 44), (8, 19), (8, 42), (8, 45);

--- добавлено для ДЗ #4
INSERT INTO albums(title, release_year)
VALUES ('HomeWork-4 SP Mix', 2022), ('New Inserts HW-4 MIXtape', 2022);
INSERT INTO performers_albums(performer_id, album_id)
VALUES (1, 25), (3, 25), (6, 25), (7, 26), (9, 26), (12, 26);
INSERT INTO tracks(track_name, run, in_album_id)
VALUES('Thriller', '5:57', 25), ('Bad', '4:07', 25), ('Smooth Criminal', '4:38', 25), ('Smells Like Teen Spirit', '5:01', 25), ('Come As You Are', '3:38', 25), ('Heart-Shaped Box', '4:41', 25), ('Pretty Hurts', '4:17', 26), ('Blow', '5:09', 26), ('Start Over', '3:19', 26), ('Personal Jesus', '4:55', 26), ('I Feel You', '4:35', 26), ('Dare', '4:04', 26), ('Stylo', '4:30', 26), ('''Cause You Are Young', '4:43', 26), ('Jump In My Car', '4:33', 26);