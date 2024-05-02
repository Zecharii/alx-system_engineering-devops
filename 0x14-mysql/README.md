# MySQL
This project was done as part of the requirements for the **Software Engineering** program at **ALX**. It aims to teach us about database, database replica, and database backup strategy.

## Technologies
* All Bash scripts passed `Shellcheck` version `0.3.7-5~ubuntu16.04.1` via `apt-get`) without any error 
* All Bash scripts are executable
* All files are interpreted/compiled on Ubuntu 16.04 LTS

## Files

| Filename | Description |
| -------- | ----------- |
| `0x14-mysql` | Install MySQL (`5.7.x`) on both `web-01` and `web-02` |
| `0x14-mysql` | Create a MySQL user on both servers (name = holberton_user, hostname = localhost, password = projectcorrection280hbtn) |
| `0x14-mysql` | Create a database on `web-01` (db_name = tyrell_corp, table_name = nexus6, add at least one entry, and holberton_user = SELECT permissions) |
| `0x14-mysql` | Create a new user on `web-01` (name = replica_user, hostname = %, password = password, and holberton_user = SELECT privileges to `mysql.user` table) |
| `4-mysql_configuration_primary` | MySQL primary configuration |
| `4-mysql_configuration_replica` | MySQL replica configuration |
| `5-mysql_backup` | A Bash script that generates a MySQL dump and creates a compressed archive out of it |
