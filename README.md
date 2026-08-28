<div align="center">

# ⚡ Pokémon Database

### A MySQL project for learning and practicing real-world SQL

[![MySQL](https://img.shields.io/badge/MySQL-8%2B-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![SQL](https://img.shields.io/badge/Language-SQL-4479A1?style=for-the-badge)](.)
[![Status](https://img.shields.io/badge/Status-Learning%20Project-orange?style=for-the-badge)](.)

</div>

---

## 📖 About

A small **Pokémon relational database** built with MySQL to demonstrate practical SQL and DBMS concepts: schema design, keys, CRUD operations, joins, filtering, sorting, aggregation and many-to-many relationships.

## 🧩 Database Design

```text
 types ───────< pokemon ───────< pokemon_moves >────── moves
   │              │                    │                 │
 type_id PK    type_id FK          pokemon_id FK      type_id FK
 type_name     pokemon_id PK       move_id FK         move_id PK
               stats...                               move_name
                                                       power
                                                       accuracy
```

## 📂 Files

| File | Purpose |
|---|---|
| `database.sql` | Creates the database, tables and sample data |
| `queries.sql` | Practical SQL queries covering common DBMS operations |
| `README.md` | Project documentation |

## 🧠 Concepts Covered

- `CREATE DATABASE` / `CREATE TABLE`
- Primary & foreign keys
- `INSERT`, `UPDATE`, `DELETE`
- `SELECT` and `WHERE`
- `LIKE` and `BETWEEN`
- `ORDER BY` and `LIMIT`
- `GROUP BY` and `HAVING`
- `COUNT()` and `AVG()`
- `JOIN`
- Relational and many-to-many design

## 🚀 How to Run

Open MySQL:

```bash
mysql -u root -p
```

Then load the project:

```sql
SOURCE database.sql;
SOURCE queries.sql;
```

The scripts can also be run from MySQL Workbench.

## 📊 Sample Data

Starter data includes **Bulbasaur, Charmander, Squirtle, Pikachu, Jigglypuff, Meowth, Psyduck, Growlithe, Machop and Onix**, plus Pokémon types and moves.

## 🎯 Learning Goal

Build practical confidence with relational database design and SQL by working with a familiar dataset.

## 🛣️ Roadmap

- [ ] Add all 151 Gen 1 Pokémon
- [ ] Add dual-type support
- [ ] Add abilities table
- [ ] Add evolution chains
- [ ] Add trainers and teams
- [ ] Add views and stored procedures
- [ ] Add ER diagram

---

Built by **[Om Talekar](https://github.com/OmTalekarDev)**.
