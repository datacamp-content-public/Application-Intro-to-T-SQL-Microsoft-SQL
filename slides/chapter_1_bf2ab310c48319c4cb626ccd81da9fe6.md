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
SELECT TOP (10) customer_id,amount
  FROM [Order]
  ORDER BY amount ; 
```
{{1}}

![](https://assets.datacamp.com/production/repositories/3466/datasets/d85b48c99dc09aaec459f78124ee019f8463b313/01 Order-by-output.PNG) {{2}}


`@part2`
- use ORDER BY [column name] to order by the desired column {{1}}

- By default,results are returned in ascending order (low - to high). {{2}}

- When we use ORDER BY, it always appears as the last line of the query {{3}}


`@script`
Here we select 2 columns  - customer ID and amount, and order by the the amount column. 
 
By default, when we use ORDER BY, the results are ordered lowest to highest

The results show the 10 records with the lowest order amount.

Note that ORDER BY appears below the FROM section of the query.

Finally, remember that we can order by a column, without it appearing in the SELECT statement


---
## ORDER BY - Descending Order

```yaml
type: "TwoColumns"
key: "3f8ea25017"
```

`@part1`
```SQL
SELECT TOP (10) customer_id,amount
  FROM [Order]
  ORDER BY amount DESC;
```

![](https://assets.datacamp.com/production/repositories/3466/datasets/44235ad243e12559308a5945bbdf1745269f8d61/01 Order-by-output-desc.PNG)


`@part2`
To return results in descending order, we use 'DESC' at the end of the ORDER BY statement.


`@script`
Here we use the same query, but adding DESC to the order by command, to specify results should by from highest to lowest
This returns the 10 highest order value records from the order table.


---
## ORDER BY - Multiple columns, different directions

```yaml
type: "TwoColumns"
key: "4c4bd7f7b7"
```

`@part1`
```SQL
SELECT TOP (10) customer_id,amount
  FROM [Order]
  ORDER BY amount, customer_id;
```

![](https://assets.datacamp.com/production/repositories/3466/datasets/8ca0fa5bf501073e0993c628cd36fda96ba12559/01 Order-by-output-multiple-ascending.PNG)


`@part2`
```SQL
SELECT TOP (10) customer_id,amount
  FROM [Order]
  ORDER BY amount, customer_id DESC;
```
![](https://assets.datacamp.com/production/repositories/3466/datasets/32e4741999b5c10db4267ccbf83d44eca7cb20e6/01 Order-by-output-multiple-desc.PNG)


`@script`
On the left, records are first sorted by order value, then by ID. 

Records 8-10 have the same order value, so its the id column, this acts as a tie breaker and determines the final order.

On the right, records 8-10 have the same order value, but the id column is now sorted in descending order.


---
## Ordering String columns

```yaml
type: "TwoColumns"
key: "fc7be0d3cd"
```

`@part1`
```SQL
SELECT product_id, product
FROM Product
ORDER BY product;
```
![](https://assets.datacamp.com/production/repositories/3466/datasets/87d97067b4ce46c95a8b94be86a7c67b7a96c12e/01-string-ascending.PNG)


`@part2`
```SQL
SELECT product_id, product
FROM Product
ORDER BY product DESC;
```
![](https://assets.datacamp.com/production/repositories/3466/datasets/1e3830266d5a038b70112a8aab7c6b03b198bd5c/01-string-descending.PNG)


`@script`
Ordering works with string fields as well. So here, we see product sorted from A-Z on the left, and, because we specify DESC in the right hand query, we see the product column ordered from Z-A. 
As before, we can order multiple string columns, in any combination of ascending and descending order.


---
## WHERE clause operators 

```yaml
type: "FullSlide"
key: "cb95ad24ba"
```

`@part1`
```SQL
SELECT columnA, columnB
FROM table 
WHERE -- apply filter
ORDER BY ; 
-- WHERE columnA > 10 -- greater than 10

-- WHERE columnA  < 10 -- less than 10

-- WHERE columnB  >= 10 -- greater than or equal to 10

-- WHERE columnB  <= 20 -- less than or equal to 10

-- WHERE columnA  <> 10 -- NOT EQUAL to 10

-- WHERE columnA  !< 10 -- not less than

-- WHERE columnA  !> 10 -- not greater than 10

-- WHERE stringCol = 'desired_string'

```


`@script`
It's good practice to use filters to ensure we only retrieve the data we need - why return millions of rows if we only need several thousand. 
We use the WHERE clause, to filter our data so that we only return the rows that meet our desired criteria. 
The most common types of WHERE clause are shown here. 
Note that when we filter string columns, we use single quotes to specify the desired string value.
As with order by - we can filter using a column that is not in the main SELECT statement


---
## Final Slide

```yaml
type: "FinalSlide"
key: "3e4c2c69b7"
```

`@script`


