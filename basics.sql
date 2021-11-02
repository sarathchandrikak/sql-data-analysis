create database if not exists Sales;
Use Sales;
create table sales(
          purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
          Date_of_purchase DATE NOT NULL,
          customer_id INT,
          item_code varchar(10) NOT NULL
    );
    
    
create table customers(
		customer_id INT, 
        First_name varchar(255),
        last_name varchar (255),
        email_address varchar(255),
        number_of_complaints int,
primary key (customer_id)
        );
Drop table customers;

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
PRIMARY KEY (customer_id)
);

CREATE TABLE items (
	item_code VARCHAR (255),
	item VARCHAR (255),
	unit_price NUMERIC (10, 2),
	company_id VARCHAR (255)
);

create table companies (
	Company_id VARCHAR (255),
company_name VARCHAR (255),
headquarters_phone_number int(12)
);

ALTER Table Sales add Foreign Key (customer_id) References customers (customer_id) on DELETE CASCADE;

Alter table customers add Unique Key (email_address);

Alter table customers drop INDEX email_address;

ALTER TABLE customers
ADD COLUMN gender ENUM('M', 'F') AFTER last_name;

INSERT INTO customers (first_name, last_name, gender, email_address, number_of_complaints)
VALUES ('John', 'Mackinley', 'M', 'john.mckinley@365datascience.com', 0);

Alter table customers change column number_of_complaints number_of_complaints int default 0;
Insert into customers(first_name, last_name, gender) values ('Peter','Figaro','M');

select * from customers;

        
        