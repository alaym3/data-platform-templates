# data-platform-templates

## Running services

This repository defines the following services in `docker-compose.yml`:

- `mage` — your Mage project runtime
- `postgres` — the Postgres database used by Mage and Metabase
- `metabase` — the Metabase analytics dashboard
- `migrations` — `dbmate` SQL migrations for Postgres

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

## Postgres migrations service

This repo now includes a `dbmate`-based migration service.

Migration files live in `migrations/` and use `dbmate` SQL syntax.

Example migrations:

- `migrations/20260507120000_create_example_table.sql`
- `migrations/20260507121000_create_users_table.sql`

Each migration file contains separate `up` and `down` blocks:

```sql
-- migrate:up
CREATE TABLE ...;

-- migrate:down
DROP TABLE ...;
```

Usage:

- `docker compose run --rm migrations status`
- `docker compose run --rm migrations up`
- `docker compose run --rm migrations rollback`
- `docker compose run --rm migrations new create_email_index`

The `new` command creates a timestamped migration file in `migrations/`, for example `migrations/20260507123000_create_email_index.sql`.

### How dbmate applies migrations

- `docker compose run --rm migrations up` applies all pending migrations in timestamp order.
- dbmate reads the `-- migrate:up` section from each migration file and runs that SQL.
- `docker compose run --rm migrations rollback` rolls back the most recently applied migration by executing its `-- migrate:down` section.

### Run one migration file specifically

dbmate does not support applying an arbitrary existing migration file by filename out of order. The normal workflow is:

1. create a new migration:
   - `docker compose run --rm migrations new create_email_index`
2. edit the new file in `migrations/`
3. apply it with:
   - `docker compose run --rm migrations up`

If the file is the next pending migration, `up` will execute only that file.

### Run a specific file's down segment

To execute the `down` block for the latest applied migration:

- `docker compose run --rm migrations rollback`

This runs the `-- migrate:down` section of the most recent migration file.

If you need to undo a specific migration that is not the most recent, rollback repeatedly until the desired migration is removed.