-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Table ""contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "email" varchar(100)   NOT NULL,
    CONSTRAINT "pk_Table ""contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Table ""categories" (
    "category_id" varchar(10)   NOT NULL,
    "category" varchar(100)   NOT NULL,
    CONSTRAINT "pk_Table ""categories" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Table ""subcategories" (
    "subcategory_id" varchar(10)   NOT NULL,
    "subcategory" varchar(100)   NOT NULL,
    "category_id" varchar(10)   NOT NULL,
    CONSTRAINT "pk_Table ""subcategories" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "Table ""campaigns" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(255)   NOT NULL,
    "description" text   NOT NULL,
    "goal" decimal(10,2)   NOT NULL,
    "pledged" decimal(10,2)   NOT NULL,
    "outcome" varchar(50)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(50)   NOT NULL,
    "currency" varchar(10)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(10)   NOT NULL,
    "subcategory_id" varchar(10)   NOT NULL,
    CONSTRAINT "pk_Table ""campaigns" PRIMARY KEY (
        "cf_id"
     )
);

