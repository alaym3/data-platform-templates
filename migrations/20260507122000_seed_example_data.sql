-- migrate:up
INSERT INTO public.example_table (name) VALUES
    ('Example row 1'),
    ('Example row 2');

INSERT INTO public.users (email, full_name) VALUES
    ('alice@example.com', 'Alice Example'),
    ('bob@example.com', 'Bob Example');

-- migrate:down
DELETE FROM public.users
WHERE email IN ('alice@example.com', 'bob@example.com');

DELETE FROM public.example_table
WHERE name IN ('Example row 1', 'Example row 2');
