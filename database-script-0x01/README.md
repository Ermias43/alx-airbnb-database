# Database Schema – alx-airbnb-database

##  Directory: `database-script-0x01`

###  File: `schema.sql`

This file defines the full DDL (Data Definition Language) structure of the Airbnb clone database.

Includes:
- All entities: User, Property, Booking, Payment, Review, Message, Location
- Primary and foreign key constraints
- ENUMs and data types
- Indexes for optimal performance

---

## Notes

- UUIDs are used as primary keys for scalability.
- Foreign key constraints ensure relational integrity.
- Indexes are created for frequently queried fields like `email`, `host_id`, and `booking_id`.

---

## How to Run

To create the schema in a PostgreSQL or MySQL-compatible database:

```bash
psql -U youruser -d yourdb -f schema.sql
# or
mysql -u youruser -p yourdb < schema.sql

