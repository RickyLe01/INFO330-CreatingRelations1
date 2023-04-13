CREATE TABLE  IF NOT EXISTS buildings (name VARCHAR(80) NOT NULL, shortname VARCHAR(10) UNIQUE, id INTEGER PRIMARY KEY);

INSERT INTO buildings (name, shortname) VALUES 
('Mary Gates Hall', 'MGH'),
('Raitt Hall', 'RAI'),
('Architecture Hall', 'ARC'),
('Loew Hall', 'LOW');


CREATE TABLE IF NOT EXISTS rooms (number INTEGER, buildingid REFERENCES buildings(id), seating INTEGER);

INSERT INTO rooms VALUES 
(430, (SELECT id FROM buildings WHERE name='Mary Gates Hall'), 35),
(147, (SELECT id FROM buildings WHERE name='Architecture Hall'), 290),
(121, (SELECT id FROM buildings WHERE name='Raitt Hall'), 70),
(113, (SELECT id FROM buildings WHERE name='Loew Hall'), 25);