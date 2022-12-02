USE defaultdb;
SHOW TABLES;

CREATE TABLE users(
    id INT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    gender VARCHAR(100),
    ip_address VARCHAR(100)
);

INSERT
	INTO
	users(id, first_name, last_name, email, gender, ip_address)
VALUES
 ( 1, 'John', 'Doe', 'jdoe@example.com', 'Male', '42.86.99.75'),
 ( 2, 'James', 'Goss', 'jgoss@example.com', 'Male', '53.10.2.25');

select * from users;
