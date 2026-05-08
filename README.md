# data-platform-templates

## Running services

This repository defines the following services in `docker-compose.yml`:

- `mage` — your Mage project runtime
- `postgres` — the Postgres database used by Mage and Metabase
- `metabase` — the Metabase analytics dashboard
- `flyway` — Flyway SQL migrations for Postgres

### Accessing services

- Mage UI: `http://localhost:6789`
- Metabase: `http://localhost:3000`
- Postgres: connect with TablePlus, DBeaver, psql, or another database client using `localhost:5432`

### Start all services

```bash
docker compose up -d
```

This starts `mage`, `postgres`, and `metabase` in the background.

### Start only Postgres

```bash
docker compose up -d postgres
```

Use this when you want the database available without starting Mage or Metabase.

### Start only Mage

```bash
docker compose up -d mage
```

This starts the Mage project runtime. The `mage` service depends on the `postgres` service, so `postgres` will be started automatically if needed.

### Start only Metabase

```bash
docker compose up -d metabase
```

This starts the Metabase dashboard and connects it to the `postgres` database.

## Flyway migrations service

This repo now includes a `flyway`-based migration service.

Migration files live in `migrations/` and use Flyway SQL syntax with versioned filenames.

Example migrations:

- `migrations/V1__create_schemas.sql`
- `migrations/V2__create_example_table.sql`
- `migrations/V3__create_users_table.sql`
- `migrations/V4__seed_example_data.sql`

Each migration file contains plain SQL statements. Flyway automatically handles versioning and execution order based on the filename.

```sql
CREATE TABLE IF NOT EXISTS public.example_table (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
```

### Migration tracking table

Flyway automatically creates a `flyway_schema_history` table in your Postgres database to track applied migrations. This table includes:

- `installed_rank` (INT): The order of execution
- `version` (VARCHAR(50)): The version number (e.g., '1', '2')
- `description` (VARCHAR(200)): The description from the filename (e.g., 'create_example_table')
- `type` (VARCHAR(20)): 'SQL' for SQL migrations
- `script` (VARCHAR(1000)): The migration filename
- `checksum` (INT): Checksum of the migration file
- `installed_by` (VARCHAR(100)): User who applied the migration
- `installed_on` (TIMESTAMP): When the migration was applied
- `execution_time` (INT): Time taken to execute in milliseconds
- `success` (BOOLEAN): Whether the migration succeeded

The table is created in the current schema (public with our configuration). You can query this table to see applied migrations:

```sql
SELECT * FROM public.flyway_schema_history ORDER BY installed_rank DESC;
```

Usage:
plain SQL INSERT statements.

Example seed file:

- `migrations/V3_lyway repair` — Repair the schema history table

For rollback, Flyway supports undo migrations with separate undo scripts (e.g., `U1__undo_create_example_table.sql`). To rollback, create undo scripts and run `docker compose run --rm flyway undo`.

To create a new migration file, manually create a file with the next version number, e.g., `V5__add_email_index.sql`.

- `docker compose run --rm migrations rollback`

This runs the `-- migrate:down` section of the most recent migration file.

If you need to undo a specific migration that is not the most recent, rollback repeatedly until the desired migration is removed.