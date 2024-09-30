-- Table to create a List of Theatres
CREATE TABLE Theatre (
    theatre_id INT PRIMARY KEY AUTO_INCREMENT,
    theatre_name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    theatre_type VARCHAR(255) NOT NULL
);

-- Sample data
INSERT INTO Theatre (theatre_name, location,theatre_type)
VALUES ('PVR Nexus', 'Hyderabad','Multiplex'),
('Cinepolis LuLu mall ', 'Hyderabad','Multiplex'),
('Sandhya 35mm', 'Hyderabad','Single'),
('Cinepolis LuLu mall ', 'Hyderabad','Multiplex'),
('Sudarshan 35mm', 'Hyderabad','Single'),
('INOX GVK One', 'Hyderabad','Multiplex'),
('Sudarshan 35mm','Hyderabad','Single'),
('Prasads IMAX', 'Hyderabad','Multiplex'),
('Mallikarjuna 70mm','Hyderabad','Single');

Select * from Theatre; 

-- Table to create a list of screens
CREATE TABLE Screen (
    screen_id INT PRIMARY KEY AUTO_INCREMENT,
    screen_number INT NOT NULL,
    theatre_id INT,
    total_seats INT,
    FOREIGN KEY (theatre_id) REFERENCES Theatre(theatre_id)
);

-- Sample data
INSERT INTO Screen (screen_number, theatre_id, total_seats)
VALUES (1, 1, 150),
       (2, 1, 180),
       (3, 1, 180),
       (4, 1, 180),
       (5, 1, 180),
       (6, 1, 180),
       (1, 2, 150),
       (2, 2, 180),
       (3, 2, 180),
       (4, 2, 180),
       (5, 2, 180),
       (6, 2, 180),
       (1, 3, 380),
	   (1, 4, 150),
       (2, 4, 180),
       (3, 4, 180),
       (4, 4, 180),
       (5, 4, 180),
       (6, 4, 180),
       (1, 5, 380),
	   (1, 6, 150),
       (2, 6, 180),
       (3, 6, 180),
       (4, 6, 180),
       (5, 6, 180),
       (6, 6, 180),
       (1, 7, 380),
	   (1, 8, 150),
       (2, 8, 180),
       (3, 8, 180),
       (4, 8, 180),
       (5, 8, 180),
       (6, 8, 180),
       (1, 9, 380);
       
       select * from Screen;
       
       
       
       

-- Table to create a list of movies
CREATE TABLE Movie (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_name VARCHAR(255) NOT NULL,
    language VARCHAR(50),
    format VARCHAR(50),
    rating VARCHAR(10),
    duration INT
);

-- Sample data
INSERT INTO Movie (movie_name, language, format, rating, duration)
VALUES ('KGF Chapter 2', 'Telugu', '4K Dolby 7.1', 'UA', 168),
       ('Ala Vaikunthapurramuloo', 'Telugu', '2D', 'UA', 165),
       ('Sarileru Neekevvaru', 'Telugu', '2D', 'UA', 169),
       ('Vikram', 'Telugu', '4K Dolby 7.1', 'UA', 175),
       ('Agent Sai Srinivasa Athreya', 'Telugu', '2D', 'UA', 150),
       ('Shyam Singha Roy', 'Telugu', '2D', 'UA', 157),
       ('Radhe Shyam', 'Telugu', '4K Dolby 7.1', 'UA', 144),
       ('Majili', 'Telugu', '2D', 'UA', 154),
       ('Devara', 'Telugu', '2D', 'UA', 178),
       ('Drushyam 2', 'Telugu', '2D', 'UA', 155);
       
       select * from Movie;
       
       
       
-- Table to create list of shows.      
CREATE TABLE Shows (
    show_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT,
    screen_id INT,
    show_date DATE,
    show_time TIME,
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id),
    FOREIGN KEY (screen_id) REFERENCES Screen(screen_id)
);

-- Sample data
INSERT INTO Shows (movie_id, screen_id, show_date, show_time)
VALUES 
-- Shows for PVR Nexus 
(6, 1, '2024-10-01', '12:00:00'),
(7, 2, '2024-10-01', '15:30:00'),
(8, 3, '2024-10-01', '18:30:00'),
(9, 4, '2024-10-02', '13:00:00'),
(10, 5, '2024-10-02', '19:00:00'),
(1, 6, '2024-10-02', '21:30:00'),

-- Shows for Cinepolis LuLu Mall
(2, 7, '2024-10-01', '12:30:00'),
(3, 8, '2024-10-01', '16:00:00'),
(4, 9, '2024-10-01', '19:30:00'),
(5, 10, '2024-10-02', '14:00:00'),
(6, 11, '2024-10-02', '20:30:00'),

-- Shows for Sandhya 35mm
(7, 13, '2024-10-01', '11:30:00'),
(8, 13, '2024-10-01', '16:30:00'),

-- Shows for Sudarshan 35mm
(9, 19, '2024-10-01', '14:00:00'),
(10, 20, '2024-10-01', '18:30:00'),

-- Shows for INOX GVK One
(2, 25, '2024-10-02', '12:30:00'),
(3, 26, '2024-10-02', '15:00:00'),
(4, 27, '2024-10-02', '18:00:00'),
(5, 28, '2024-10-02', '21:00:00'),

-- Shows for Prasads IMAX 
(6, 31, '2024-10-03', '10:30:00'),
(7, 32, '2024-10-03', '14:00:00'),
(8, 33, '2024-10-03', '17:30:00'),
(9, 34, '2024-10-03', '20:30:00'),

-- Shows for Sudarshan 35mm 
(3, 21, '2024-10-02', '12:00:00'),
(4, 22, '2024-10-02', '15:30:00'),
(5, 23, '2024-10-02', '19:00:00'),
(1, 24, '2024-10-02', '21:30:00'),

-- Shows for Mallikarjuna 70mm
(6, 29, '2024-10-01', '11:00:00'),
(7, 30, '2024-10-01', '14:30:00'),
(8, 30, '2024-10-01', '18:00:00'),

-- Shows for Sudarshan 35mm 
(9, 35, '2024-10-01', '13:00:00'),
(10, 35, '2024-10-01', '16:30:00'),
(1, 35, '2024-10-01', '20:00:00');

select * from shows;

-- this query shows the list of Movies and its screen of a particular Theatre,
SELECT T.theatre_name, 
       SC.screen_number, 
       S.show_date, 
       S.show_time, 
       M.movie_name
FROM Shows S
JOIN Screen SC ON S.screen_id = SC.screen_id
JOIN Theatre T ON SC.theatre_id = T.theatre_id
JOIN Movie M ON S.movie_id = M.movie_id
WHERE S.show_date = '2024-10-02' AND T.theatre_id=6;


Result : 
theatre_name	screen_number	show_date	show_time	movie_name
INOX GVK One	  1	           2024-10-02	12:00:00	Sarileru Neekevvaru
INOX GVK One	  2	           2024-10-02	15:30:00	Vikram
INOX GVK One	  3	           2024-10-02	19:00:00	Agent Sai Srinivasa Athreya
INOX GVK One	  4	           2024-10-02	21:30:00	KGF Chapter 2
INOX GVK One	  5	           2024-10-02	12:30:00	Ala Vaikunthapurramuloo
INOX GVK One	  6	           2024-10-02	15:00:00	Sarileru Neekevvaru







