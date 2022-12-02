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
'Rene',
'Clemmett',
'rclemmett0@linkedin.com',
'Male',
'42.86.99.75'),
(2,
'Rustie',
'Chrishop',
'rchrishop1@bloomberg.com',
'Male',
'197.128.10.252'),
( 3,
'Joe',
'Cocklie',
'jcocklie2@ustream.tv',
'Male',
'124.81.44.28' ),
(
4,
'Diane',
'Catt',
'dcatt3@sogou.com',
'Female',
'169.47.61.184'
),
(
5,
'Quinton',
'Shellsheere',
'qshellsheere4@icq.com',
'Male',
'2.57.97.184'
),
(
6,
'Lena',
'Paull',
'lpaull5@tmall.com',
'Female',
'121.4.165.63'
),
(
7,
'Corena',
'Lamswood',
'clamswood6@hud.gov',
'Female',
'78.65.53.3'
),
(
8,
'Justinian',
'Nequest',
'jnequest7@virginia.edu',
'Male',
'62.24.98.224'
),
(
9,
'Vladimir',
'Boeter',
'vboeter8@addthis.com',
'Male',
'87.119.34.255'
),
(
10,
'Jillene',
'Eades',
'jeades9@amazon.de',
'Female',
'159.173.99.31'
);

select * from users;
