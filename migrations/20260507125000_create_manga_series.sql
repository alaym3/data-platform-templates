-- migrate:up
CREATE TABLE IF NOT EXISTS public.manga_series (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL UNIQUE,
    genre TEXT NOT NULL,
    author TEXT,
    volumes INTEGER,
    status TEXT NOT NULL,
    release_year INTEGER,
    publisher TEXT,
    description TEXT
);

-- migrate:down
DROP TABLE IF EXISTS public.manga_series;
