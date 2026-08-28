<div align="center">

# ⚡ Pokémon Database

### A MySQL project for learning and practicing real-world SQL

[![MySQL](https://img.shields.io/badge/MySQL-8%2B-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![SQL](https://img.shields.io/badge/Language-SQL-4479A1?style=for-the-badge)](.)
[![Status](https://img.shields.io/badge/Status-Learning%20Project-orange?style=for-the-badge)](.)

</div>

---

## 📖 About

This project is a small **Pokémon relational database** built with MySQL. It is designed to demonstrate practical SQL and DBMS concepts such as table creation, primary keys, foreign keys, joins, filtering, sorting, aggregation, and many-to-many relationships.

## 🧩 Database Design

The database contains four main tables:

```text
┌─────────────┐       ┌──────────────┐
│    types    │       │   pokemon    │
├─────────────┤       ├──────────────┤
│ type_id PK  │◄──────│ type_id FK   │
│ type_name   │       │ pokemon_id PK│
└─────────────┘       │ stats...     │
                      └──────┬───────┘
                             │
                             │
                      ┌──────▼─────────┐
                      │ pokemon_moves  │
                      ├────────────────┤
                      │ pokemon_id FK  │
                      │ move_id FK     │
                      └──────┬─────────┘
                             │
                      ┌──────▼───────┐
                      │    moves     │
                      ├──────────────┤
                      │ move_id PK   │
                      │ move_name    │
                      │ power        │
                      │ accuracy     │
                      │ type_id FK   │
                      └──────────────┘
```

## 📂 Files

| File | Purpose |
|---|---|
| `database.sql` | Creates the database, tables and sample Pokémon data |
| `queries.sql` | Practical SQL queries demonstrating common DBMS operations |
| `README.md` | Project documentation |

## 🧠 Concepts Covered

- `CREATE DATABASE`
- `CREATE TABLE`
- Primary Keys
- Foreign Keys
- `INSERT`
- `UPDATE`
- `DELETE`
- `SELECT`
- `WHERE`
- `LIKE`
- `BETWEEN`
- `ORDER BY`
- `GROUP BY`
- `HAVING`
- `COUNT()`
- `AVG()`
- `JOIN`
- `LIMIT`
- Many-to-many relationships

## 🚀 How to Run

### 1. Open MySQL

```sql
mysql -u root -p
```

### 2. Load the database

```sql
SOURCE database.sql;
```

### 3. Run the practice queries

```sql
SOURCE queries.sql;
```

Or copy individual queries from `queries.sql` into MySQL Workbench or the MySQL command line.

## 📊 Sample Data

The database includes starter data for Pokémon such as **Bulbasaur, Charmander, Squirtle, Pikachu, Jigglypuff, Meowth, Psyduck, Growlithe, Machop, and Onix**, along with types and moves.

## 🎯 Learning Goal

The purpose of this project is to build confidence with relational database design and SQL by working with a familiar dataset.

## 🛣️ Future Improvements

- [ ] Add all 151 Gen 1 Pokémon
- [ ] Add dual-type support
- [ ] Add abilities table
- [ ] Add evolution chains
- [ ] Add trainers and teams
- [ ] Add views and stored procedures
- [ ] Add an ER diagram

---

Built by **Om Talekar** · `BlockZGaming`
