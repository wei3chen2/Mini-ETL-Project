﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/YM9vlo
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify to create the crowfunding schema diagram.

CREATE TABLE "Campaign" (
    "cf-id" INTEGER   NOT NULL,
    "contact-id" INTEGER   NOT NULL,
    "company-name" VARCHAR(255)   NOT NULL,
    "description" VARCHAR(255)   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(255)   NOT NULL,
    "backers_count" INTEGER   NOT NULL,
    "country" VARCHAR(255)   NOT NULL,
    "currency" VARCHAR(255)   NOT NULL,
    "launched_date" DATETIME   NOT NULL,
    "end_date" DATETIME   NOT NULL,
    "category_id" VARCHAR(255)   NOT NULL,
    "subcategory_id" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf-id"
     )
);

CREATE TABLE "Contacts" (
    "contact-id" INTEGER   NOT NULL,
    "first-name" VARCHAR(255)   NOT NULL,
    "last-name" VARCHAR(255)   NOT NULL,
    "email" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact-id"
     )
);

CREATE TABLE "Category" (
    "category-id" VARCHAR(255)   NOT NULL,
    "category" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category-id"
     )
);

-- try the PDF/RTF export
CREATE TABLE "Subcategory" (
    "subcategory-id" VARCHAR(255)   NOT NULL,
    "subcategory" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory-id"
     )
);

ALTER TABLE "Contacts" ADD CONSTRAINT "fk_Contacts_contact-id" FOREIGN KEY("contact-id")
REFERENCES "Campaign" ("contact_id");

ALTER TABLE "Category" ADD CONSTRAINT "fk_Category_category-id" FOREIGN KEY("category-id")
REFERENCES "Campaign" ("category_id");

ALTER TABLE "Subcategory" ADD CONSTRAINT "fk_Subcategory_subcategory-id" FOREIGN KEY("subcategory-id")
REFERENCES "Campaign" ("subcategory_id");

