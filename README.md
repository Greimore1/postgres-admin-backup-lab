# PostgreSQL Administration Lab

This project demonstrates PostgreSQL administration fundamentals using Docker. It covers role and permission management, schema design, logical backups with rotation, restoration validation, and simple health checks.

All resources run locally in containers and can be torn down without affecting your host.

---

## Tools Used

- **PostgreSQL 16**
- **Docker Compose**
- **Bash (Linux Terminal)**

---

## Skills Demonstrated

**Role & Permission Management:**  
Created application-specific roles with least privilege (`app_read`, `app_write`, `app_login`) and enforced schema-level security on an `app` schema.

**Backup & Restore:**  
Automated compressed logical backups with `pg_dump`, added retention pruning, and restored into a clean instance to validate recoverability.

**Monitoring & Health Checks:**  
Collected quick metrics such as connections per DB and top table sizes to assess performance and detect bloat candidates.

**Schema Management:**  
Defined `app.orders` with appropriate datatypes and grants; set `search_path` for application role.

---

