--Create the tables, columns, and relationships

CREATE TABLE contacts (
    contact_id INTEGER PRIMARY KEY NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL
);


CREATE TABLE category (
    category_id VARCHAR PRIMARY KEY NOT NULL,
    category VARCHAR NOT NULL
);


CREATE TABLE subcategory (
    subcategory_id VARCHAR PRIMARY KEY NOT NULL,
    subcategory VARCHAR NOT NULL
);


CREATE TABLE campaign (
    cf_id INTEGER PRIMARY KEY NOT NULL,
    contact_id INTEGER NOT NULL,
    company_name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    goal VARCHAR NOT NULL,
    pledged VARCHAR NOT NULL,
    outcome VARCHAR NOT NULL,
    backers_count INTEGER  NOT NULL,
    country VARCHAR NOT NULL,
    currency VARCHAR NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
	category_id VARCHAR NOT NULL,
    subcategory_id VARCHAR NOT NULL,
	    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	    FOREIGN KEY (category_id) REFERENCES category(category_id),
	    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

--View the tables

SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;