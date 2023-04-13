CREATE TABLE IF NOT EXISTS student_courses (studentid REFERENCES students(id), course REFERENCES courses(code), grade FLOAT);

INSERT INTO student_courses (studentid, course) VALUES 
((SELECT id FROM students WHERE firstname = 'Fred' AND lastname = 'Flintstone'), (SELECT code FROM courses WHERE code = 'INFO330A')),
((SELECT id FROM students WHERE firstname = 'Fred' AND lastname = 'Flintstone'), (SELECT code FROM courses WHERE code = 'INFO448A')),
((SELECT id FROM students WHERE firstname = 'Fred' AND lastname = 'Flintstone'), (SELECT code FROM courses WHERE code = 'INFO314')),
((SELECT id FROM students WHERE firstname = 'Barney' AND lastname = 'Rubble'), (SELECT code FROM courses WHERE code = 'INFO330A')),
((SELECT id FROM students WHERE firstname = 'Barney' AND lastname = 'Rubble'), (SELECT code FROM courses WHERE code = 'INFO449A')),
((SELECT id FROM students WHERE firstname = 'Wilma' AND lastname = 'Flintstone'), (SELECT code FROM courses WHERE code = 'BAW0100')),
((SELECT id FROM students WHERE firstname = 'Wilma' AND lastname = 'Flintstone'), (SELECT code FROM courses WHERE code = 'BAW100A')),
((SELECT id FROM students WHERE firstname = 'Betty' AND lastname = 'Rubble'), (SELECT code FROM courses WHERE code = 'BAW0100'));
