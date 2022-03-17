create database customerdb;
use customerdb;

create table customer(
	id int primary key auto_increment,
	first_name varchar(50),
    last_name varchar(50),
    email varchar(50)
);
 
 insert into customer values(1,'Vincent','Vuram','vuramvincent204@gmail.com');
 
 use customerdb;
 

 