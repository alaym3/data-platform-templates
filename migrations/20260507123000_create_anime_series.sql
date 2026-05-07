-- migrate:up
CREATE TABLE IF NOT EXISTS public.anime_series (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL UNIQUE,
    medium TEXT NOT NULL,
    genre TEXT NOT NULL,
    author TEXT,
    episodes INTEGER,
    volumes INTEGER,
    status TEXT NOT NULL,
    release_year INTEGER,
    description TEXT
);

-- migrate:down
DROP TABLE IF EXISTS public.anime_series;
