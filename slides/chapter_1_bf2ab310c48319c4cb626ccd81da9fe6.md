---
title: Insert title here
key: bf2ab310c48319c4cb626ccd81da9fe6

---
## Ordering and Filtering

```yaml
type: "TitleSlide"
key: "f34f16ad85"
```

`@lower_third`

name: John MacKintosh
title: Instructor


`@script`
In this section, we'll learn to use the ORDER BY keywords, which will sort our data, and WHERE clauses, to return data that meet our criteria


---
## Sets don't have a natural order

```yaml
type: "TwoRowsWideBottom"
key: "83a55eeb90"
```

`@part1`
- We think in terms of rows and columns, but queries return sets, or subsets, of the overall data {{1}}

- Results may not always be returned in the same order (depending on how the data is entered and how the table is designed) {{2}}

- If the order of our query results is important, we need to specify it using ORDER BY {{3}}


`@part2`
![](https://assets.datacamp.com/production/repositories/3466/datasets/6a7185129b4f4630129e6c28e43b95b465795243/spreadsheet-147749_640.png)


`@part3`
![](https://assets.datacamp.com/production/repositories/3466/datasets/73c487f1801a9db8393081bc190cd834ad4140dc/venn-diagram-41218_640.png)


`@script`
SQL is set based, rather than row based.
This means there is no inherent order in the results. 
If having our data in a certain order is important, we need to specify this using the ORDER BY command


---
## ORDER BY - Ascending Order

```yaml
type: "TwoColumns"
key: "4d357131b9"
```

`@part1`
```SQL
SELECT TOP (50) order_value
  FROM [DataDemo].[dbo].[Order]
  ORDER order_value ; 
```

![](https://assets.datacamp.com/production/repositories/3466/datasets/fd9f65402016dae0e05e88de25a5c0492b99f6d3/01 Order-by-output.PNG)


`@part2`
- use ORDER BY [column name] to order by the desired column 

- By default,results are returned in ascending order (low - to high). 

- Here we see the lowest order amounts from the **Order** table


`@script`
In this query, we want to sort by the order_value column, so we specify that immediately after the ORDER BY syntax. 

By default, the records are sorted from  the lowest to highest values.  These are the 50 lowest value records in the order table


---
## ORDER BY - Descending Order

```yaml
type: "TwoColumns"
key: "3f8ea25017"
```

`@part1`
```SQL
SELECT TOP (50) order_value
  FROM [DataDemo].[dbo].[Order]
  ORDER BY order_value DESC;
```

![](https://assets.datacamp.com/production/repositories/3466/datasets/8eaad394514d8d9a7a1520088a6923099a71bcfc/01 Order-by-output-desc.PNG)


`@part2`
To return results in descending order, we use 'DESC' at the end of the ORDER BY statement.


`@script`
Here we use the same query, but adding DESC to the order by command, to specify results should by from highest to lowest
This returns the 50 highest order value records from the order table.


---
## ORDER BY - Multiple columns

```yaml
type: "TwoColumns"
key: "4c4bd7f7b7"
```

`@part1`
```SQL
SELECT TOP (50) id, order_value
  FROM [DataDemo].[dbo].[Order]
  ORDER BY order_value, id;
```
![](https://assets.datacamp.com/production/repositories/3466/datasets/29b5119ed825f1396cb1265083c72a10c986f74c/01 Order-by-output-multiple-ascending.PNG)


`@part2`
```SQL
SELECT TOP (50) id, order_value
  FROM [DataDemo].[dbo].[Order]
  ORDER BY order_value ASC, id DESC;
```
![](https://assets.datacamp.com/production/repositories/3466/datasets/643380ccf02550e6fbe8a1e18e91a9ae71fa9c67/01 Order-by-output-multiple-desc.PNG)


`@script`
On the left, records are first sorted by order value, then by ID. 

Records 8-11 have the same order value, so its the id column, this acts as a tie breaker and determines the final order.

On the right, records 8-11 have the same order value, but the id column is now sorted in descending order.


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
## Final Slide

```yaml
type: "FinalSlide"
key: "3e4c2c69b7"
```

`@script`


