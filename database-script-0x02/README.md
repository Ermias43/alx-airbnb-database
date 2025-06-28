# Seed Data – alx-airbnb-database

## Directory: `database-script-0x02`

### File: `seed.sql`

This script contains sample `INSERT` statements for all tables defined in our schema (`User`, `Location`, `Property`, `Booking`, `Payment`, `Review`, `Message`).

### Relationships
- Users can be guests, hosts, or admins.
- Hosts own properties located in cities (via `Location`).
- Guests make bookings and payments, leave reviews, and exchange messages.

---

## ✅ How to Use

Make sure you've already created the schema using `schema.sql`, then seed the data:

```bash
psql -U youruser -d yourdb -f seed.sql
# or
mysql -u youruser -p yourdb < seed.sql

