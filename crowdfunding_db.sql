DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS campaign;


CREATE TABLE category(
	category_id VARCHAR(10) NOT NULL,
	category VARCHAR (20) NOT NULL,
	PRIMARY KEY (category_id)
);


CREATE TABLE subcategory(
	
	subcategory_id VARCHAR(10) NOT NULL,
	subcategory VARCHAR(20) NOT NULL,
	PRIMARY KEY (subcategory_id)
);


CREATE TABLE contacts(
	contact_id int,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	email VARCHAR(50),
	PRIMARY KEY (contact_id)
);


CREATE TABLE campaign(
	cf_id int Not Null,
	contact_id int,
	company_name VARCHAR,
	description VARCHAR,
	goal float,
	pledged float,
	outcome VARCHAR,
	backers_count int,	
	country	VARCHAR,
	currency VARCHAR,	
	launched_date Date,
	end_date Date,	
	category_id	VARCHAR,
	subcategory_id VARCHAR,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);
	

select * from category;
select * from subcategory;
select * from contacts;
select * from campaign;
