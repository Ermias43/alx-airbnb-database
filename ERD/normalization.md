# Ì≥ä Database Normalization ‚Äì Airbnb Clone Project

## ÌæØ Goal
Ensure the Airbnb Clone database schema is normalized up to **Third Normal Form (3NF)** to eliminate redundancy and maintain data integrity.

---

## Ì¥ç Step-by-Step Normalization

### ‚úÖ 1NF ‚Äì First Normal Form
- All fields are atomic (e.g., one email, one phone per user).
- All tables have unique rows with primary keys.
- ‚úÖ **Status: PASSED**

---

### ‚úÖ 2NF ‚Äì Second Normal Form
- Each table has a single-column primary key (UUID).
- No partial dependencies because no composite keys exist.
- ‚úÖ **Status: PASSED**

---

### ‚ö†Ô∏è 3NF ‚Äì Third Normal Form
- Identified potential transitive dependency in `Property.location`.
- **Issue:** Repeated location strings across properties violate 3NF.
- **Solution:** Create a `Location` table and use `location_id` as a foreign key.

#### ‚ûï New Table:
```sql
Location (
  location_id UUID PRIMARY KEY,
  city VARCHAR NOT NULL,
  state VARCHAR,
  country VARCHAR NOT NULL
)

