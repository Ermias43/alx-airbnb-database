-- ✅ Seed Data for alx-airbnb-database
-- ⚠️ Assumes tables are already created as in schema.sql

-- Insert Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
('b1c01d10-1111-4a12-a111-aaa111111111', 'Alice', 'Walker', 'alice@demo.com', 'hashed_pw1', '0911111111', 'guest'),
('b2c02d20-2222-4a22-a222-bbb222222222', 'Bob', 'Brown', 'bob@demo.com', 'hashed_pw2', '0922222222', 'host'),
('b3c03d30-3333-4a33-a333-ccc333333333', 'Cathy', 'Smith', 'cathy@demo.com', 'hashed_pw3', NULL, 'admin');

-- Insert Locations
INSERT INTO Location (location_id, city, state, country)
VALUES
('l1a1b1c1-aaaa-4bbb-b111-eee111111111', 'Addis Ababa', 'Addis Ababa', 'Ethiopia'),
('l2a2b2c2-bbbb-4ccc-c222-fff222222222', 'Nairobi', 'Nairobi', 'Kenya');

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location_id, pricepernight)
VALUES
('p1010101-aaaa-bbbb-cccc-dddd11111111', 'b2c02d20-2222-4a22-a222-bbb222222222', 'Sunset Villa', 'Luxury villa with amazing views.', 'l1a1b1c1-aaaa-4bbb-b111-eee111111111', 95.00),
('p2020202-bbbb-cccc-dddd-eeee22222222', 'b2c02d20-2222-4a22-a222-bbb222222222', 'City Loft', 'Modern loft in the heart of Nairobi.', 'l2a2b2c2-bbbb-4ccc-c222-fff222222222', 60.00);

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('bk101010-aaaa-bbbb-cccc-dddd00000001', 'p1010101-aaaa-bbbb-cccc-dddd11111111', 'b1c01d10-1111-4a12-a111-aaa111111111', '2025-07-01', '2025-07-04', 285.00, 'confirmed'),
('bk202020-bbbb-cccc-dddd-eeee00000002', 'p2020202-bbbb-cccc-dddd-eeee22222222', 'b1c01d10-1111-4a12-a111-aaa111111111', '2025-08-15', '2025-08-20', 300.00, 'pending');

-- Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
('pay1010-aaaa-bbbb-cccc-dddd00000001', 'bk101010-aaaa-bbbb-cccc-dddd00000001', 285.00, 'credit_card'),
('pay2020-bbbb-cccc-dddd-eeee00000002', 'bk202020-bbbb-cccc-dddd-eeee00000002', 300.00, 'paypal');

-- Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
('rev101-aaaa-bbbb-cccc-dddd00000001', 'p1010101-aaaa-bbbb-cccc-dddd11111111', 'b1c01d10-1111-4a12-a111-aaa111111111', 5, 'Absolutely stunning view and clean rooms.'),
('rev202-bbbb-cccc-dddd-eeee00000002', 'p2020202-bbbb-cccc-dddd-eeee22222222', 'b1c01d10-1111-4a12-a111-aaa111111111', 4, 'Great location and easy check-in.');

-- Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
('msg101-aaaa-bbbb-cccc-dddd00000001', 'b1c01d10-1111-4a12-a111-aaa111111111', 'b2c02d20-2222-4a22-a222-bbb222222222', 'Hi Bob, is the Sunset Villa available in July?'),
('msg202-bbbb-cccc-dddd-eeee00000002', 'b2c02d20-2222-4a22-a222-bbb222222222', 'b1c01d10-1111-4a12-a111-aaa111111111', 'Yes, you can book it directly.');

