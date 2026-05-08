CREATE TABLE IF NOT EXISTS public.users (
    id SERIAL PRIMARY KEY,
    email TEXT NOT NULL UNIQUE,
    full_name TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
