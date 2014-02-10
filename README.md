The Jitbit SQL Challenge, Create SQLite Database
================
An sql challenge presented by Jitbit used as a screener in their interview questions, [Jitbit's SQL interview questions](http://www.jitbit.com/news/181-jitbits-sql-interview-questions/). "The test's job is not to tell genius and rockstars from "normal" devs. The purpose is to save you time and quickly filter out DB-experienced guys from the ones that just claim to be." Jitbit did not provide the sql to generate the database.


Project Links
-------------
 - [Homepage](diek.ca)
 - [Git Repository](git://github.com/diek/jitbits_sql_challenge.git)



-------------------------------------------------------------------------------------------



Description
============
Jitbit provided the table structure and relationships, the database has two tables, an employee and department table. The employee table included a recursive relationship to identify employee and boss.

The questions provided by Jitbit forced some of the design, at least one:
 - department has no employees
 - department has less than three employees
 - employee's boss is in a different department
 - employee makes more money than their boss

The data was obtained online from the city of Chicago's employee listing. The data was downloaded in comma seperated value format, [raw data](http://www.cityofchicago.org/city/en/depts/dhr/dataset/current_employeenamessalariesandpositiontitles.html). The data was modified slightly and the number of records was reduced from 32432 to 3247 for the Extract, Transform and Load(ETL) process.


Installation
------------
#### Tools Used
 - [SQLite version 3.8.3](http://www.sqlite.org/)
 - [Sublime Text 3](http://www.sublimetext.com/), or your favorite text editing tool
 - Microsoft Excel for Mac 2011,  used for the ETL process


First, ensure that you have the latest versions of the tools above installed. Note SQLite3 was installed using [Homebrew](brew.sh)

#### Creation of Database

- Download create_db.sql and save it to an applicable directory.

- Open terminal navigate to the directory containing create_db.sql.

	- The name of the database is your choice, the file extension, db or sqlite are two possible conventions, again your choice.

- Run the following commands, the first runs the script, the second to displays the tables confirming the structure

		- $ sqlite3 Jitbit_sql_questions.db < create_db.sql
        - $ sqlite3 Jitbit_sql_questions.db
		- sqlite>.schema

#### Usage ####
Go to [Jitbit's SQL interview questions](http://www.jitbit.com/news/181-jitbits-sql-interview-questions/) and attempt to solve the questions listed. Note, if the url does not work, the questions can be found at the top of create_db.sql

#### File Manifest ####
- README.md
- create_db.sql
- jitbit_sql_solutions.sql(pending)
