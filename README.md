# Mini-ETL-Project-CrowdFunding

## Overview

This project aims to utilize ETL process to prepare, explore and analyze crowd funding data in a more consolidated view, which can drive better decision making in future.
An ETL pipeline is built, using Python and Pandas methods and functions, to extract and convert the data. Then based on these data, an ERD (Entity Relationship Diagram) and a SQL table schema are generated. Finally, these cleaned data are loaded into a Postgres database as the final production environment.

## Project outline

ETL is an acronym that stands for extract, transform and load. It is a data integration process that combines data from multiple data sources into a single, consistent data store that is loaded into a data warehouse or other target system. 

This project is divided into the following subsections:
 *  Create the Category and Subcategory DataFrames
 *  Create the Campaign DataFrame
 *  Create the Contacts DataFrame
 *  Sketch the ERD diagram and create the Postgres Database
 *  Import the CSV files into corresponding SQL tables

![ERD diagram](https://github.com/wei3chen2/Mini-ETL-Project-/blob/main/ERD%20diagram%20(2).png)

Data Resources

 *  contacts.xlsx
 *  crowdfunding.xlsx



