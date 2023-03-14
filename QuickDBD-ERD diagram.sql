-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/YM9vlo
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to create the crowfunding schema diagram.

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
  FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
  FOREIGN KEY (category_id) REFERENCES Category(category_id),
  FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id) 
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

