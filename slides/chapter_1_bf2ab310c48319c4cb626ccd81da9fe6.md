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
Our SELECT statements  currently return all rows in our chosen columns. In this section, we'll learn how to filter these rows, and sort them, using the ORDER BY and WHERE clauses.


---
## ORDER! ORDER!

```yaml
type: "TwoRowsWideBottom"
key: "83a55eeb90"
```

`@part1`
- Tables have columns and rows {{1}}

- Queries return _sets_, or _subsets_, of the overall data.{{2}}

- Sets  have NO inherent order. {{3}}

- Query results may not always be returned in the same order  {{4}}

- If the order of our query is _important_, we need to specify it using **ORDER BY** {{5}}


`@part2`
![](https://assets.datacamp.com/production/repositories/3466/datasets/6a7185129b4f4630129e6c28e43b95b465795243/spreadsheet-147749_640.png) {{1}}


`@part3`
![](https://assets.datacamp.com/production/repositories/3466/datasets/73c487f1801a9db8393081bc190cd834ad4140dc/venn-diagram-41218_640.png) {{2}}


`@script`
Our data is stored in tables, which comprise of columns and rows.

But,depending on how the data is entered, and how the table is designed, we can't guarantee our SELECT statements will always return data in a given order.

If we have a desired order, we must specify it, using ORDER BY.


---
## ORDER BY - Ascending Order

```yaml
type: "TwoColumns"
key: "4d357131b9"
```

`@part1`
```SQL
SELECT TOP (10) customerid,amount
  FROM [DataDemo].[dbo].[Order]
  ORDER BY amount ; 
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
## Final Slide

```yaml
type: "FinalSlide"
key: "3e4c2c69b7"
```

`@script`


