# PostgreSQL data engineering and data analysis

Using QuickDBD and PostgreSQL, performing creation of tables, importing of data and executing several queries.

### Summary 

Project based on data research of employees of a corporation from 1980's - 1990's.

### Data Modeling
Inspected CSV files and created an ERD of the tables by using http://www.quickdatabasediagrams.com (see: [er_diagram.png](https://github.com/kseniadyakova10/sql-challenge/blob/main/er_diagram.png))

### Data Engineering
Using ERD diagram, created a table schema for each CSV file. Included data types, primary keys, foreign keys and other constraints (see: [data_schema.sql](https://github.com/kseniadyakova10/sql-challenge/blob/main/data_schema.sql)).
Imported each CSV file into the corresponding SQL table for future data analysis.

### Data Analysis
Performed thorough analysis of all employee data under various research requirements (see: [query.sql](https://github.com/kseniadyakova10/sql-challenge/blob/main/query.sql))