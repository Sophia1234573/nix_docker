INSERT INTO role (id, name) VALUES (1, 'admin');
INSERT INTO role (id, name) VALUES (2, 'user');

INSERT INTO person (role_id, first_name, last_name, login, dob, password, email)
VALUES (1, 'sophia', 'denisovich', 'sophia1987', '1987-05-28 00:00:00', 'secretpassword', 'sophia@gmail.com');

INSERT INTO person (role_id, first_name, last_name, login, dob, password, email)
VALUES (2, 'olesya', 'petrova', 'olesya1987', '1987-01-04 00:00:00', 'verysecretpassword', 'olesya@gmail.com');

INSERT INTO person (role_id, first_name, last_name, login, dob, password, email)
VALUES (2, 'yulia', 'savich', 'yulia1986', '1986-12-28 00:00:00', 'veryverysecretpassword', 'yulia@gmail.com');