# � Database Normalization – Airbnb Clone Project

## � Goal
Ensure the Airbnb Clone database schema is normalized up to **Third Normal Form (3NF)** to eliminate redundancy and maintain data integrity.

---

## � Step-by-Step Normalization

### ✅ 1NF – First Normal Form
- All fields are atomic (e.g., one email, one phone per user).
- All tables have unique rows with primary keys.
- ✅ **Status: PASSED**

---

### ✅ 2NF – Second Normal Form
- Each table has a single-column primary key (UUID).
- No partial dependencies because no composite keys exist.
- ✅ **Status: PASSED**

---

### ⚠️ 3NF – Third Normal Form
- Identified potential transitive dependency in `Property.location`.
- **Issue:** Repeated location strings across properties violate 3NF.
- **Solution:** Create a `Location` table and use `location_id` as a foreign key.

#### ➕ New Table:
```sql
Location (
  location_id UUID PRIMARY KEY,
  city VARCHAR NOT NULL,
  state VARCHAR,
  country VARCHAR NOT NULL
)

