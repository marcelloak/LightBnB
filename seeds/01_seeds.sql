INSERT INTO users (name, email, password) 
VALUES ('Marcello', 'm@k.ca', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Heather', 'h@k.ca', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Ashley', 'a@k.ca', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, street, city, province, post_code, country) 
VALUES (3, 'Skyview Ranch', 'Condo', 'www.photo.com/thumbnail', 'www.photo.com/cover', 200, 1, 1, 2, 'Skyview Ranch Road', 'Calgary', 'Alberta', 'T3N0P4', 'Canada'),
(3, 'Cornerstone', 'Condo', 'www.photo.com/thumbnail', 'www.photo.com/cover', 50, 1, 1, 1, 'Cornerstone Drive', 'Calgary', 'Alberta', 'T3N0P5', 'Canada'),
(1, 'Redstone', 'Townhouse', 'www.photo.com/thumbnail', 'www.photo.com/cover', 100, 2, 2, 3, 'Redstone Circle', 'Calgary', 'Alberta', 'T3N0P6', 'Canada');

INSERT INTO reservations (guest_id, property_id, start_date, end_date) 
VALUES (1, 1, '2018-09-11', '2018-09-26'),
(2, 2, '2019-01-04', '2019-02-01'),
(3, 3, '2021-10-01', '2021-10-14');

INSERT INTO property_reviews (property_id, guest_id, reservation_id, rating, message) 
VALUES (1, 1, 1, 5, 'Amazing'),
(2, 2, 2, 3, 'Alright'),
(3, 3, 3, 1, 'Horrible');