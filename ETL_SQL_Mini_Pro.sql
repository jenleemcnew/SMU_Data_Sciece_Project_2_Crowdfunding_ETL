
drop table if exists category cascade;
drop table if exists subcategory cascade;
drop table if exists contacts cascade;
drop table if exists campaign cascade;

-- Create category table
 create table category(
 	category_id VARCHAR (30) primary key not null,
	category VARCHAR (30) not null 
 );

select * from category; 

-- Create table subcategory
create table subcategory(
	subcategory_id VARCHAR primary key not null,
	subcategory VARCHAR not null
);

select * from subcategory;

-- Create table contacts
create table contacts(
	contact_id INT primary key not null,
	first_name VARCHAR not null,
	last_name VARCHAR not null,
	email VARCHAR not null
);

select * from contacts;

-- Create table campaign
create table campaign(
	cf_id INT primary key not null,
	contact_id INT not null,
	company_name VARCHAR not null,
	description VARCHAR not null,
	goal numeric (10,2) not null,
	pledged numeric (10,2) not null,
	outcome VARCHAR not null,
	backers_count INT not null,
	country VARCHAR not null,
	currency VARCHAR not null,
	launched_date DATE not null,
	end_date DATE not null,
	category_id VARCHAR not null,
	subcategory_id VARCHAR not null,
	foreign key(contact_id) references contacts(contact_id),
	foreign key(category_id) references category(category_id),
	foreign key(subcategory_id) references subcategory(subcategory_id)
);

select * from campaign;



 
 
 
 