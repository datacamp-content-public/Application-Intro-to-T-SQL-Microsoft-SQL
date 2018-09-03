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
We've seen how to limit the number of rows returned using TOP. Now, we'll learn more advanced filtering and sorting,  using the WHERE and ORDER BY clauses.


---
## ORDER! ORDER!

```yaml
type: "TwoRowsWideBottom"
key: "83a55eeb90"
```

`@part1`
- Tables have columns and rows {{1}}

- Queries return _sets_, or _subsets_, of the overall data.{{2}}

- Sets  have NO inherent order - results may not always be returned in the same way. {{3}}

- If the order of our query is _important_, we need to specify it using **ORDER BY** {{4}}


`@part2`
![](https://assets.datacamp.com/production/repositories/3466/datasets/6a7185129b4f4630129e6c28e43b95b465795243/spreadsheet-147749_640.png) {{1}}


`@part3`
![](https://assets.datacamp.com/production/repositories/3466/datasets/73c487f1801a9db8393081bc190cd834ad4140dc/venn-diagram-41218_640.png) {{2}}


`@script`
Tables comprise of rows and columns, and query results can also be displayed this way.

But we should bear in mind that queries return data that exist within SETS, and that sets have no default order.

This means we can't guarantee rows will be returned in the same position every time.

If we need results in a certain order, we must use ORDER BY.


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
  ORDER BY amount,customer_id ; 
```
{{1}}

![](https://assets.datacamp.com/production/repositories/3466/datasets/d85b48c99dc09aaec459f78124ee019f8463b313/01 Order-by-output.PNG) {{2}}


`@part2`
- use ORDER BY **column name(s)** to order by the desired column (s) 
{{1}}


- By default, results are returned in ascending order (low - to high).  If ordering by 2 or more columns, they are sorted by the first column, then each remaining column in turn  
{{2}}

- ORDER BY should always appear on the  last line of the query {{3}}

- TIP - We can order by columns that don't appear in the select list {{4}}


`@script`
To order our results, we simply list the columns we want to sort by after the FROM keyword. 

Here, we sort by amount, then customer ID. 

Notice rows 3 and 4, and 8-10, have the same values in the amount column, so the ID column determines their final row position

We can also order by a column that is not used in the SELECT statement


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
Here we add DESC,or descending, keyword, to the order by clause, to order results from high to low.

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
  ORDER BY amount, customer_id ASC;
```

![](https://assets.datacamp.com/production/repositories/3466/datasets/e32f5b675f913c81a0f32acf07209d5b18220600/01 Order-by-output-multiple-ascending.PNG)

Sort both columns in ascending order


`@part2`
```SQL
SELECT TOP (10) customer_id,amount
  FROM [Order]
  ORDER BY amount DESC, customer_id;
```
![](https://assets.datacamp.com/production/repositories/3466/datasets/cb3336de57323b36bec72bd37f599e820deb98fe/01 Order-by-output-multiple-desc.PNG)

Sort by amount in descending order


`@script`
We can sort by multiple columns and combinations of order, to arrive at the final output we require


---
## Ordering text columns

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
{{1}}

![](https://assets.datacamp.com/production/repositories/3466/datasets/87d97067b4ce46c95a8b94be86a7c67b7a96c12e/01-string-ascending.PNG) {{1}}


`@part2`
```SQL
SELECT product_id, product
FROM Product
ORDER BY product DESC;
```
{{2}}
![](https://assets.datacamp.com/production/repositories/3466/datasets/1e3830266d5a038b70112a8aab7c6b03b198bd5c/01-string-descending.PNG)
{{2}}


`@script`
Ordering works with string or text fields as well. 
So here, we see product sorted from A-Z on the left,and from Z-A  on the right, due to use of DESC

By default, SQL Server is case insensitive - so capitals and lower case letters are treated the same. 
This also applies to referencing table and column names, and also keywords such as SELECT and FROM


---
## The WHERE clause

```yaml
type: "FullSlide"
key: "cb95ad24ba"
```

`@part1`
SELECT product, price

FROM sales 
WHERE (these conditions are true) 

{{1}}

```SQL
WHERE price > 10 -- greater than 10
```
{{2}}

```SQL
WHERE price  < 10 -- less than 10
```
{{3}}
```SQL
WHERE price >= 10 -- greater than or equal to 10
```
{{4}}
```SQL
WHERE price  <= 20 -- less than or equal to 20
```
{{5}}
Filtering text -Use single quotes {{6}}
```SQL
-- WHERE product = 'peripherals'
```
{{7}}


`@script`
We use the WHERE clause to ensure we only return rows that meet our desired criteria.

Here we filter by  greater than,


 less than,


greater or equal to, 


or  less than or equal  to our desired values. 

We can also filter strings or text values.  
To do this, we use single quotes

As with order by - we can filter using a column that is not in the main SELECT statement


---
## NOT EQUAL

```yaml
type: "TwoRows"
key: "a1823805fa"
```

`@part1`
```SQL
SELECT product, price
FROM sales 
WHERE price  <> 10 -- NOT EQUAL to 10;
```
{{1}}


`@part2`
```SQL
SELECT product, price
FROM sales  
WHERE price  != 10 --  alternative NOT EQUAL notation;
```
{{2}}


`@script`
There are a couple of ways to test for non equality. 

The first is to use the left and right arrows together, as shown in the top example. This is the most commonly used method in T-SQL.

Using the exclamation mark in conjunction with the equals sign also works.


---
## BETWEEN

```yaml
type: "TwoColumns"
key: "f3397b46c1"
```

`@part1`
Use the 'BETWEEN' & 
'AND' keywords to specify a range of values. 


```SQL
SELECT TOP (5) price,quantity
FROM sales  
WHERE quantity BETWEEN 1 AND 3;
```
{{1}}

We can negate the BETWEEN clause by preceding with 'NOT' : {{3}}

```SQL
SELECT TOP (5) price,quantity
FROM sales  
WHERE quantity NOT BETWEEN 1 AND 3;
```
{{4}}


`@part2`
![](https://assets.datacamp.com/production/repositories/3466/datasets/9767d9443aab266e7441b6a171cfe62358d60c75/01 BETWEEN.png)
{{2}}

![](https://assets.datacamp.com/production/repositories/3466/datasets/7bad6f9d63ae812ba857b35c536b20aaf3cb8fbb/01 NOT BETWEEN.png)
{{5}}


`@script`
You can use BETWEEN to return values in a range. Your results will include the values you specify.  The first query includes 1 and 3 
You can negate this by preceding BETWEEN with the 'NOT' keyword


---
## What is NULL?

```yaml
type: "TwoColumns"
key: "6548e480d4"
```

`@part1`
Return  NULL values:  {{2}}
```SQL
SELECT columnA, columnB
FROM table 
WHERE amount IS NULL
```
{{2}}
Return non NULL values {{3}}
```SQL
SELECT columnA, columnB
FROM table 
WHERE amount IS NOT NULL
```
{{3}}
Replace NULL {{4}}
```SQL
SELECT ISNULL(columnA,0)
FROM table;
```
{{4}}


`@part2`
- NULL indicates there is no value for that record. This may be valid, or it can help identify data quality issues
{{1}}

- return NULL values using IS NULL 
{{2}}

- filter out NULLs using IS NOT NULL 
{{3}}

- replace NULLS using ISNULL(column_name, replacement_value) {{4}}


`@script`
NULLs occur when there is no value for a particular field, for one or more records. 

Some columns are not allowed to have missing values -  they are non NULLable. 

However, it may be perfectly valid for other columns to contain NULLs. 

A missing value is not necessarily a zero value, and we may need to be aware of the 'missingness' of the record - NULLS help highlight gaps in our data.


---
## NULL examples

```yaml
type: "TwoColumns"
key: "c13ee81a57"
```

`@part1`
```SQL
SELECT TOP (5) amount,invoice_no
FROM expenses
WHERE invoice_no IS NULL
ORDER BY amount DESC;
```
{{1}}
![](https://assets.datacamp.com/production/repositories/3466/datasets/4d6c648472dd7df5912a917af8f87f0d49aac88e/top5null.png)
{{2}}


`@part2`
```SQL
SELECT TOP (5) amount,invoice_no
FROM expenses
WHERE invoice_no IS NOT NULL
ORDER BY amount DESC,
```
{{3}}

![](https://assets.datacamp.com/production/repositories/3466/datasets/76d4a7ade3b21663e075ea18266e1159e66ba1f6/top5isnotnull.png)
{{4}}


`@script`
It's very useful to know how to retrieve NULLS, using IS NULL and how to filter them out, using IS NOT NULL.

You can replace NULLs, if required, using the ISNULL function.
Let's take a look at that now


---
## REPLACING NULL VALUES

```yaml
type: "FullSlide"
key: "f8eb4b724c"
```

`@part1`
```SQL

SELECT amount,
invoice_no,
ISNULL(invoice_no,0) AS null_replacement
FROM expenses
ORDER BY amount DESC;
```
{{1}}

![](https://assets.datacamp.com/production/repositories/3466/datasets/2c5ea4e2c757f2be87726cc0389da20e4d5a7a03/replaceNULL.png)
{{2}}


`@script`
Here we use ISNULL to replace missing invoice numbers with 0. We also select the original column for comparison – our NULLS become zeros
 
Notice the use of the AS keyword, which allows us to name our new column 'null_replacement'


---
## Let's Practice

```yaml
type: "FinalSlide"
key: "3e4c2c69b7"
```

`@script`
OK, we've covered a lot in this lesson. Let's practice our new skills!

