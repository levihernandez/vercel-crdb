/*
show databases;
use defaultdb;
show tables;
*/

use defaultdb;
show tables;

/* CREATE TABLE */
create table users(
    id INT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    gender VARCHAR(100),
    ip_address VARCHAR(100)
);

insert
	into
	users(id,
	first_name,
	last_name,
	email,
	gender,
	ip_address)
values
 ( 1,
'John',
'doe',
'jdoe@example.com',
'Male',
'42.86.99.75');

select * from users;
