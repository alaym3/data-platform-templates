-- migrate:up
INSERT INTO public.anime_series (title, medium, genre, author, episodes, volumes, status, release_year, description) VALUES
    ('Otaku Odyssey 1', 'Anime', 'Action', 'Neko Fujimoto', 24, NULL, 'Finished', 2015, 'A young hero discovers a hidden world of digital spirits.'),
    ('Otaku Odyssey 2', 'Anime', 'Adventure', 'Neko Fujimoto', 26, NULL, 'Finished', 2016, 'A quest across floating islands with a motley crew.'),
    ('Otaku Odyssey 3', 'Anime', 'Fantasy', 'Neko Fujimoto', 12, NULL, 'Finished', 2017, 'A magical tournament decides the fate of the realm.'),
    ('Blade Blossom 1', 'Anime', 'Action', 'Mina Haru', 13, NULL, 'Finished', 2018, 'A swordswoman defends a city of living flowers.'),
    ('Blade Blossom 2', 'Anime', 'Drama', 'Mina Haru', 12, NULL, 'Finished', 2019, 'Competing clans deal with betrayal and redemption.'),
    ('Blade Blossom 3', 'Anime', 'Fantasy', 'Mina Haru', 24, NULL, 'Finished', 2020, 'An ancient curse awakens beneath a floating garden.'),
    ('Neo Tokyo Drift 1', 'Anime', 'Sci-Fi', 'Ryuichi Kudo', 20, NULL, 'Finished', 2014, 'Street racers fight for the future of Tokyo.'),
    ('Neo Tokyo Drift 2', 'Anime', 'Cyberpunk', 'Ryuichi Kudo', 22, NULL, 'Finished', 2016, 'Hacked vehicles battle in a neon metropolis.'),
    ('Neo Tokyo Drift 3', 'Anime', 'Thriller', 'Ryuichi Kudo', 16, NULL, 'Finished', 2018, 'A heist team races against time and AI police.'),
    ('Galaxy Guardians 1', 'Anime', 'Space', 'Hana Akari', 25, NULL, 'Finished', 2021, 'Rookie pilots defend the galaxy from alien invaders.'),
    ('Galaxy Guardians 2', 'Anime', 'Sci-Fi', 'Hana Akari', 24, NULL, 'Finished', 2022, 'A mysterious signal leads the crew to an ancient starship.'),
    ('Midnight Magus 1', 'Anime', 'Mystery', 'Kaito Sora', 12, NULL, 'Finished', 2017, 'A magician solves supernatural crimes after dark.'),
    ('Midnight Magus 2', 'Anime', 'Fantasy', 'Kaito Sora', 14, NULL, 'Finished', 2019, 'A magical academy hides secrets in midnight labs.'),
    ('Crimson Courier 1', 'Anime', 'Action', 'Miyu Tanaka', 18, NULL, 'Finished', 2020, 'A courier with a cursed package races across continents.'),
    ('Crimson Courier 2', 'Anime', 'Adventure', 'Miyu Tanaka', 20, NULL, 'Finished', 2021, 'A chase through desert cities and hidden temples.'),
    ('Seraph Sky 1', 'Anime', 'Fantasy', 'Aoi Shimizu', 13, NULL, 'Finished', 2013, 'Winged warriors protect a flying kingdom.'),
    ('Seraph Sky 2', 'Anime', 'Action', 'Aoi Shimizu', 15, NULL, 'Finished', 2015, 'Rival factions battle for control of the skies.'),
    ('Horizon Hacker 1', 'Anime', 'Cyberpunk', 'Kazu Yamada', 24, NULL, 'Finished', 2018, 'A hacker uncovers a conspiracy inside virtual reality.'),
    ('Horizon Hacker 2', 'Anime', 'Sci-Fi', 'Kazu Yamada', 24, NULL, 'Finished', 2019, 'A rogue AI threatens the boundary between worlds.'),
    ('Mythic Melody 1', 'Anime', 'Fantasy', 'Aki Nishimura', 12, NULL, 'Finished', 2012, 'Musical spells awaken ancient spirits.'),
    ('Mythic Melody 2', 'Anime', 'Music', 'Aki Nishimura', 13, NULL, 'Finished', 2014, 'A band uses songs to heal a broken kingdom.'),
    ('Phantom Pages 1', 'Anime', 'Horror', 'Sae Mizuno', 10, NULL, 'Finished', 2016, 'A haunted book brings stories to life.'),
    ('Phantom Pages 2', 'Anime', 'Mystery', 'Sae Mizuno', 11, NULL, 'Finished', 2017, 'Investigators explore cursed literature.'),
    ('Sakura Storm 1', 'Anime', 'Action', 'Yumi Hayashi', 20, NULL, 'Finished', 2018, 'A ninja clan defends cherry blossom ruins.'),
    ('Sakura Storm 2', 'Anime', 'Adventure', 'Yumi Hayashi', 22, NULL, 'Finished', 2019, 'A journey through enchanted spring landscapes.'),
    ('Dragon Drift 1', 'Anime', 'Fantasy', 'Rin Fujimoto', 12, NULL, 'Finished', 2013, 'A dragon rider searches for a lost island.'),
    ('Dragon Drift 2', 'Anime', 'Action', 'Rin Fujimoto', 14, NULL, 'Finished', 2015, 'Rival riders compete in sky races.'),
    ('Pixel Pioneers 1', 'Anime', 'Sci-Fi', 'Nao Saito', 18, NULL, 'Finished', 2020, 'Players explore a virtual world with real stakes.'),
    ('Pixel Pioneers 2', 'Anime', 'Adventure', 'Nao Saito', 20, NULL, 'Finished', 2021, 'A lost city appears inside a game engine.'),
    ('Neon Ninja 1', 'Anime', 'Action', 'Taro Yamamoto', 15, NULL, 'Finished', 2019, 'A futuristic ninja fights corporate samurai.'),
    ('Neon Ninja 2', 'Anime', 'Thriller', 'Taro Yamamoto', 15, NULL, 'Finished', 2021, 'A hidden conspiracy threatens the neon streets.'),
    ('Samurai Symphony 1', 'Anime', 'Drama', 'Emi Takahashi', 13, NULL, 'Finished', 2014, 'A samurai composer searches for harmony.'),
    ('Samurai Symphony 2', 'Anime', 'Music', 'Emi Takahashi', 12, NULL, 'Finished', 2016, 'Music and martial arts converge in a showdown.'),
    ('Starlight Saga 1', 'Anime', 'Space', 'Hikaru Kato', 24, NULL, 'Finished', 2015, 'A starship crew explores unknown galaxies.'),
    ('Starlight Saga 2', 'Anime', 'Sci-Fi', 'Hikaru Kato', 26, NULL, 'Finished', 2017, 'A cosmic secret threatens the universe.'),
    ('Rune Riders 1', 'Anime', 'Fantasy', 'Mako Ueda', 12, NULL, 'Finished', 2012, 'Magic motorcycles race through enchanted forests.'),
    ('Rune Riders 2', 'Anime', 'Adventure', 'Mako Ueda', 14, NULL, 'Finished', 2014, 'Riders chase a legendary rune across continents.'),
    ('Quasar Quest 1', 'Anime', 'Sci-Fi', 'Kaori Ishikawa', 16, NULL, 'Finished', 2018, 'A crew chases a disappearing star.'),
    ('Quasar Quest 2', 'Anime', 'Adventure', 'Kaori Ishikawa', 18, NULL, 'Finished', 2020, 'A new planet holds long-lost mysteries.'),
    ('Kabuki Knights 1', 'Anime', 'Action', 'Ren Sakamoto', 18, NULL, 'Finished', 2017, 'Masked performers duel for honor.'),
    ('Kabuki Knights 2', 'Anime', 'Drama', 'Ren Sakamoto', 16, NULL, 'Finished', 2019, 'A secret society protects the stage.'),
    ('Moonlit Mononoke 1', 'Anime', 'Fantasy', 'Aya Nishio', 13, NULL, 'Finished', 2013, 'A spirit girl befriends forest creatures.'),
    ('Moonlit Mononoke 2', 'Anime', 'Adventure', 'Aya Nishio', 15, NULL, 'Finished', 2015, 'A lunar pilgrimage reveals hidden gods.'),
    ('Sky Sailors 1', 'Anime', 'Adventure', 'Yu Hasegawa', 22, NULL, 'Finished', 2016, 'Airship captains race for a legendary treasure.'),
    ('Sky Sailors 2', 'Anime', 'Fantasy', 'Yu Hasegawa', 24, NULL, 'Finished', 2018, 'A storm awakens ancient sky spirits.'),
    ('Sushi Sorcerer 1', 'Anime', 'Fantasy', 'Miki Kuroda', 12, NULL, 'Finished', 2017, 'A chef uses magic spices to save her village.'),
    ('Sushi Sorcerer 2', 'Anime', 'Comedy', 'Miki Kuroda', 12, NULL, 'Finished', 2019, 'A culinary competition turns into a magical showdown.'),
    ('Pixel Pixies 1', 'Anime', 'Fantasy', 'Airi Watanabe', 13, NULL, 'Finished', 2014, 'Tiny digital fairies restore a broken game world.'),
    ('Pixel Pixies 2', 'Anime', 'Family', 'Airi Watanabe', 13, NULL, 'Finished', 2016, 'Friends team up to save their pixelated home.'),
    ('Shadow Shogun 1', 'Anime', 'Action', 'Masato Ono', 14, NULL, 'Finished', 2018, 'A shadow warrior fights against dark rulers.'),
    ('Shadow Shogun 2', 'Anime', 'Drama', 'Masato Ono', 15, NULL, 'Finished', 2020, 'Betrayal shakes the hidden ninja order.'),
    ('Echo Enchanter 1', 'Anime', 'Music', 'Nozomi Arai', 12, NULL, 'Finished', 2019, 'A singer’s voice awakens ancient magic.'),
    ('Echo Enchanter 2', 'Anime', 'Fantasy', 'Nozomi Arai', 13, NULL, 'Finished', 2021, 'A journey to reclaim lost songs of power.'),
    ('Titanium Tamer 1', 'Anime', 'Mecha', 'Yuri Mizuki', 24, NULL, 'Finished', 2015, 'A mechanic pilots a giant robot to save Earth.'),
    ('Titanium Tamer 2', 'Anime', 'Sci-Fi', 'Yuri Mizuki', 26, NULL, 'Finished', 2017, 'A rogue AI hijacks the next generation of mechs.'),
    ('Neon Notebook 1', 'Anime', 'Mystery', 'Kaya Inoue', 11, NULL, 'Finished', 2016, 'A reporter uncovers secrets in a neon city.'),
    ('Neon Notebook 2', 'Anime', 'Thriller', 'Kaya Inoue', 12, NULL, 'Finished', 2018, 'A dangerous story puts the city at risk.'),
    ('Harvest Heroes 1', 'Anime', 'Slice of Life', 'Eri Matsuda', 12, NULL, 'Finished', 2013, 'Farmhands protect their village with kindness.'),
    ('Harvest Heroes 2', 'Anime', 'Drama', 'Eri Matsuda', 13, NULL, 'Finished', 2015, 'A harvest festival becomes the stage for destiny.'),
    ('Vol. 1: Sakura Scrolls', 'Manga', 'Fantasy', 'Jun Akiyama', NULL, 5, 'Finished', 2014, 'A scroll holds the key to a hidden kingdom.'),
    ('Vol. 2: Samurai Scribbles', 'Manga', 'Action', 'Jun Akiyama', NULL, 6, 'Finished', 2015, 'A young writer draws warriors into reality.'),
    ('Vol. 3: Mecha Memoirs', 'Manga', 'Sci-Fi', 'Haru Nakamura', NULL, 8, 'Finished', 2016, 'A memoirist recounts battles in living machines.'),
    ('Vol. 4: Phantom Panels', 'Manga', 'Horror', 'Kiyo Tanaka', NULL, 7, 'Finished', 2017, 'A series of ghostly manga panels infect readers.'),
    ('Vol. 5: Dream Doodles', 'Manga', 'Fantasy', 'Mika Ozawa', NULL, 5, 'Finished', 2018, 'Sketches come alive and reshape the world.'),
    ('Vol. 6: Sakura Scribes', 'Manga', 'Drama', 'Aya Suzuki', NULL, 9, 'Finished', 2019, 'A writer searches for the final perfect story.'),
    ('Vol. 7: Neon Narratives', 'Manga', 'Cyberpunk', 'Rin Hashimoto', NULL, 10, 'Finished', 2020, 'A futuristic city unfolds across comic pages.'),
    ('Vol. 8: Lunar Lines', 'Manga', 'Romance', 'Nao Fujii', NULL, 6, 'Finished', 2021, 'Star-crossed lovers write a new destiny.'),
    ('Vol. 9: Mystic Margins', 'Manga', 'Fantasy', 'Yui Tanaka', NULL, 12, 'Finished', 2022, 'Margins between worlds fade in a magic book.'),
    ('Vol. 10: Cosmic Comics', 'Manga', 'Adventure', 'Sora Kuroda', NULL, 11, 'Finished', 2023, 'A portal opens through comic book panels.'),
    ('Vol. 11: Stardust Sketches', 'Manga', 'Fantasy', 'Kira Endo', NULL, 4, 'Finished', 2024, 'An artist’s sketches summon starlight creatures.'),
    ('Vol. 12: Arcane Artboard', 'Manga', 'Mystery', 'Mio Aki', NULL, 7, 'Finished', 2021, 'A puzzle hidden in illustrated pages reveals an ancient secret.'),
    ('Vol. 13: Echoing Epilogues', 'Manga', 'Drama', 'Hana Shiba', NULL, 6, 'Finished', 2022, 'Past and present stories collide in one volume.'),
    ('Vol. 14: Phantom Frames', 'Manga', 'Horror', 'Kei Mori', NULL, 8, 'Finished', 2023, 'A haunted camera captures ghostly frames.'),
    ('Vol. 15: Oracle Omen', 'Manga', 'Fantasy', 'Saya Fujii', NULL, 9, 'Finished', 2024, 'An oracle’s drawings shape the future.'),
    ('Vol. 16: Midnight Manga', 'Manga', 'Horror', 'Rei Arai', NULL, 5, 'Finished', 2020, 'Manga panels come alive during midnight.'),
    ('Vol. 17: Sakura Script', 'Manga', 'Romance', 'Nao Watanabe', NULL, 6, 'Finished', 2021, 'A romantic script changes reality.'),
    ('Vol. 18: Urban Utopias', 'Manga', 'Sci-Fi', 'Koji Yamamoto', NULL, 10, 'Finished', 2022, 'A city of dreams hides a dark secret.'),
    ('Vol. 19: Ember Essays', 'Manga', 'Adventure', 'Mio Kato', NULL, 5, 'Finished', 2023, 'Fire spirits guide a wandering essayist.'),
    ('Vol. 20: Crystal Chronicles', 'Manga', 'Fantasy', 'Ami Hayashi', NULL, 11, 'Finished', 2024, 'A crystal book reveals hidden worlds.');

-- migrate:down
DELETE FROM public.anime_series
WHERE title LIKE 'Otaku Odyssey %'
   OR title LIKE 'Blade Blossom %'
   OR title LIKE 'Neo Tokyo Drift %'
   OR title LIKE 'Galaxy Guardians %'
   OR title LIKE 'Midnight Magus %'
   OR title LIKE 'Crimson Courier %'
   OR title LIKE 'Seraph Sky %'
   OR title LIKE 'Horizon Hacker %'
   OR title LIKE 'Mythic Melody %'
   OR title LIKE 'Phantom Pages %'
   OR title LIKE 'Sakura Storm %'
   OR title LIKE 'Dragon Drift %'
   OR title LIKE 'Pixel Pioneers %'
   OR title LIKE 'Neon Ninja %'
   OR title LIKE 'Samurai Symphony %'
   OR title LIKE 'Starlight Saga %'
   OR title LIKE 'Rune Riders %'
   OR title LIKE 'Quasar Quest %'
   OR title LIKE 'Kabuki Knights %'
   OR title LIKE 'Moonlit Mononoke %'
   OR title LIKE 'Sky Sailors %'
   OR title LIKE 'Sushi Sorcerer %'
   OR title LIKE 'Pixel Pixies %'
   OR title LIKE 'Shadow Shogun %'
   OR title LIKE 'Echo Enchanter %'
   OR title LIKE 'Titanium Tamer %'
   OR title LIKE 'Neon Notebook %'
   OR title LIKE 'Harvest Heroes %'
   OR title LIKE 'Vol. %';
