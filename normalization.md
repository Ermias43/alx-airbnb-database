# íł Database Normalization â Airbnb Clone Project

## ížŻ Goal
Ensure the Airbnb Clone database schema is normalized up to **Third Normal Form (3NF)** to eliminate redundancy and maintain data integrity.

---

## í´ Step-by-Step Normalization

### â 1NF â First Normal Form
- All fields are atomic (e.g., one email, one phone per user).
- All tables have unique rows with primary keys.
- â **Status: PASSED**

---

### â 2NF â Second Normal Form
- Each table has a single-column primary key (UUID).
- No partial dependencies because no composite keys exist.
- â **Status: PASSED**

---

### â ď¸ 3NF â Third Normal Form
- Identified potential transitive dependency in `Property.location`.
- **Issue:** Repeated location strings across properties violate 3NF.
- **Solution:** Create a `Location` table and use `location_id` as a foreign key.

#### â New Table:
```sql
Location (
  location_id UUID PRIMARY KEY,
  city VARCHAR NOT NULL,
  state VARCHAR,
  country VARCHAR NOT NULL
)

