﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/LTRTC4
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Contacts" (
    "contact_id" IntNOT   NULL,
    "first_name" varchar(100)NOT   NULL,
    "last_name" varchar(150)NOT   NULL,
    "email" varchar(200)NOT   NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory_id" varchar(150)   NOT NULL,
    "subcategory" varchar(150)NOT   NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "Category" (
    "category_id" varchar(50)NOT   NULL,
    "category" varchar(100)NOT   NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Campaign" (
    "cf_id" varchar(50)NOT   NULL,
    "contact_id" varchar(50)NOT   NULL,
    "company_name" varchar(250)NOT   NULL,
    "description" varchar(750)NOT   NULL,
    "goal" intNOT   NULL,
    "pledged" IntNOT   NULL,
    "outcome" varchar(120)NOT   NULL,
    "backers_count" intNOT   NULL,
    "country" varchar(20)NOT   NULL,
    "currency" varchar(40)NOT   NULL,
    "launched_date" dateNOT   NULL,
    "end_date" dateNOT   NULL,
    "category_id" varchar(50)NOT   NULL,
    "subcategory_id" varchar(150)NOT   NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "Subcategory" ADD CONSTRAINT "fk_Subcategory_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Campaign" ("subcategory_id");

ALTER TABLE "Category" ADD CONSTRAINT "fk_Category_category_id" FOREIGN KEY("category_id")
REFERENCES "Campaign" ("category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

