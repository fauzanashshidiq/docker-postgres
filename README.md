# Proyek 1 / UTS Manajemen Basis Data

**Nama:** Muhammad Fauzan Ashshidiq  
**NIM:** 1237050051  
**Kelas:** IF-C

---

## Run PostgreSQL via Docker, pgAdmin, and External Access (DBeaver)

### Requirements

- Docker >= 17.12.0
- Docker Compose sudah terinstal

### Quick Start

1. Clone atau download repository ini.
2. Masuk ke dalam direktori proyek:

```
cd docker-postgres
```

3. Jalankan perintah berikut untuk membuat dan menjalankan container:

```
docker compose up -d
```

Perintah ini akan menjalankan dua container: PostgreSQL dan pgAdmin di background (detached mode).

### Environments

Buat file bernama .env yang berisi konfigurasi berikut:

- `POSTGRES_USER` = [buat username postgres kamu]
- `POSTGRES_PASSWORD` = [buat password postgres kamu]
- `PGADMIN_DEFAULT_EMAIL` = [buat email pgadmin kamu]
- `PGADMIN_DEFAULT_PASSWORD` = [buat password pgadmin kamu]

### Access to postgres:

- **Host:** `localhost`
- **Port:** `22051` (dari konfigurasi docker-compose.yml)
- **Username:** [sesuaikan dengan username postgres yang dibuat di file .env]
- **Password:** [sesuaikan dengan password postgres yang dibuat di file .env]

PostgreSQL juga dapat diakses dari port default 5432 secara internal antar-container Docker.

### Access to PgAdmin:

- **URL:** `http://localhost:44051`
- **Email:** [sesuaikan dengan email pgadmin yang dibuat di file .env]
- **Password:** [sesuaikan dengan password pgadmin yang dibuat di file .env]

#### Add a new server in PgAdmin:

1. Tab General:

- **Name:** `PostgreSQL Internal`

2. Tab Connection:

- **Host name/address** `postgres`
- **Port** `5432`
- **Username** as `POSTGRES_USER`, [sesuaikan dengan username postgres yang dibuat di file .env]
- **Password** as `POSTGRES_PASSWORD`, [sesuaikan dengan password postgres yang dibuat di file .env]

### External Access (DBeaver)

1. Buka aplikasi DBeaver -> Create New Connection -> pilih PostgreSQL.
2. Isi data berikut:

- **Host:** `localhost`
- **Port:** `22051`
- **Database:** postgres
- **Username:** as `POSTGRES_USER`, [sesuaikan dengan username postgres yang dibuat di file .env]
- **Password:** as `POSTGRES_PASSWORD`, [sesuaikan dengan password postgres yang dibuat di file .env]
