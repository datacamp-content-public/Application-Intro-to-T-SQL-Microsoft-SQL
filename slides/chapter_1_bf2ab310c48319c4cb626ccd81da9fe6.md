---
title: Insert title here
key: bf2ab310c48319c4cb626ccd81da9fe6

---
## SELECT-ion Box

```yaml
type: "TitleSlide"
key: "f34f16ad85"
```

`@lower_third`

name: John MacKintosh
title: Instructor


`@script`
In this section, we'll learn to use the SELECT statement. 
This is the basic building block of most T-SQL queries.
SELECT statements do exactly what they say - they specify the information we want to retrieve from the tables in our database.
Before we go further, let's take a look at what we mean by a database, and how a database is structured.


---
## What is T-SQL?

```yaml
type: "FullSlide"
key: "21935e79ac"
```

`@part1`
- SQL

 is the language used to interact with databases

- Portability & Common Standards

Most SQL is portable between different products. 

- T-SQL
 
Short for 'transact - SQL', is the Microsoft 'version' of SQL and is  tyically used when interacting with Microsoft SQL Server databases


`@script`
Welcome. 
What is T_SQL and why would you want to learn it?
Well, a lot of the world's data resides in databases. 
SQL (can be pronounced ESS-QUE-ELL or SQL) is the primary way of interacting with this data. 

A lot of SQL is common across various platforms - indeed there are defined standards to ensure portability of SQL code. 

However,different products mean different features and functions are available.
 
In this course, we'll cover T-SQL, or'Transact-SQL' 
This is the Microsoft version of SQL, used in its SQL Server product.

Now we know that T-SQL is a language for interacting with Microsoft databases,  let's take a look at how a database is structured.


---
## Overview : Database Structure

```yaml
type: "TwoColumns"
key: "7f8094cc4d"
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3466/datasets/5529b1afa3d94b2af37c088a6c1c796f82da8b09/database-schema-1895779_640.png)


`@part2`
- A SQL Server installation may have many databases

- A database has one or more _tables_

- Each table has a unique name

- Most tables will link to at least one other table in the database via a common _field_


`@script`
If you install MS SQL Server on your PC or laptop, then that represents one instance. 

In a large organisation, there may be many instances. 

Each instance can contain many databases, and, each database can contain many tables.
 
Each table in a database has a unique name.  
For example, there could be a customer table in two different databases, but there cannot be 2 customer tables in the same database.
 
This helps ensure that data is always retrieved from the correct table.


---
## Tables

```yaml
type: "TwoColumns"
key: "3f8ea25017"
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3466/datasets/6a7185129b4f4630129e6c28e43b95b465795243/spreadsheet-147749_640.png)


`@part2`
- Tables are commonly presented as rows and columns

- A column represents a field

- A row represents a record

- There should be one column that acts as a unique identifier, or 'key' field

- This field is then used to link to other columns, in other tables

- Unlike a spreadsheet, the rows in a table are generally NOT in any particular order.


`@script`



---
## Think Sets, Not Rows

```yaml
type: "TwoRows"
key: "8353295e36"
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3466/datasets/73c487f1801a9db8393081bc190cd834ad4140dc/venn-diagram-41218_640.png)


`@part2`
Let's learn to SELECT data


`@script`
Try to bear in mind that eventually, the data you work with may be scattered across several tables. Therefore, always envisage that you are trying to find a subset of all the possible data in the database.


---
## Simple SELECT

```yaml
type: "TwoColumns"
key: "4d357131b9"
```

`@part1`
![](https://assets.datacamp.com/production/repositories/3466/datasets/52c5b3f2a5c73d24d2415d290c23bf790a8a6547/01 Select 1.PNG)

![](https://assets.datacamp.com/production/repositories/3466/datasets/772d0bec882685c9da030338c5cae5cacc6e30de/01 Select 1 output.PNG)


`@part2`
This query will return ALL rows of data from the 'Family' column of the **expenses** table


`@script`
Here is a very simple SELECT statement. This will return ALL the rows in the Family column, from the Expenses table. Depending on the size of the table, this could return a few hundred rows, or several million.


---
## Final Slide

```yaml
type: "FinalSlide"
key: "3e4c2c69b7"
```

`@script`


