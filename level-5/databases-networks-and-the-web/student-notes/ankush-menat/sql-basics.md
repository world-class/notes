# Databases notes


## SQL
- Developed at IBM in 1970s
- Oracle beat IBM to market and released their SQL DBMS before IBM  could release DB2.
- SQL has survived many "bleeding edge" techs. OO-DBMS, XML (Xquery), and recently NoSQL and MapReduce.
- SQL:
    - is Declarative. We say what we want, not _how_.
    - has many many implementations from small SQlite to massive distributed databases.
    - is constrained. Not supposed to be Turing-complete.  It's a DSL.
- Database: "set of named relations"
    - Schema is fixed.
    - Data is atomic
    - relation (table):
        - Schema: description or metadata (think table headers)
        - Instance: set of data satisfying the schema. (think table data)

| num | first | last                  | <-- Schema           |
| --- | ---   | ---                   | ---                  |
| 42  | foo   | bar                   | <-- tuple/record/row |
| 69  | baz   | boop                  |                      |
|     |       |                       |                      |
|     |       | ^ an attribute/column |                      |


- SQL is actually not a single language but collection of 2 sub-languages. It's often confusing because both share very similar syntax.
    - DDL - Data definition language
    - DML - Data manipulation language
- RDBMS is system responsible for efficient evaluation of SQL statements.

## DDL - example

```sql
create table Books (
    id integer
    , name char(20)
    , authorid INTEGER
    , rating integer
    , primary key (id)
    , foreign key (authorid) references Authors
);

create table Authors (
    id integer
    , name char(20)
    , primary key (id)
);
```
- Side note: Despite popular use of capitalization of SQL reserved words, it's not required since long time.
- Primary keys can be composite (1 or more columns)
- Foreign key by default refer to primary key of  referenced table.

## DML -  General structure of SQL queries
```sql
select [distinct] <column expression list>
from <table> [as alias]
[where <predicate>]
[order by <column expression list>]
[limit n]
```
- `distinct` removes duplicates
- `order by` does lexicographic ordering
- `asc` and `desc` change order. Default `asc`.
- `limit n` limits output to `n` results.
- position of `distinct` matters. `select distinct count(x)` vs `select count(distinct x)` are two different things.

## Aggregates
- Compute some summary based on column output.
- e.g. `sum`, `count`, `max`, `min` and `avg`.
- Aggregates are often computed by a group
```sql
select distinct avg(Books.rating), Books.authorid
from Book
group by Books.authorid
```
- Having filters out aggregates
```sql
select distinct avg(Books.rating), Books.authorid
from Book
group by Books.authorid
having count(*) > 2
```


- Simple and fast way to practice writing SQL queries: http://sqlzoo.net/

## conceptual SQL evaluation (DML)

Typical order of evaluation for SQL DML queries could be conceptually in this order:

```
from -> where -> select -> group -> having -> distinct -> order -> limit

find table -> remove rows -> pick up columns -> form groups and  aggregates -> eliminate groups -> eliminate duplicates -> sort -> limit output
```

## Multi-table DML queries
- First step changes in multi-table queries. Instead of identifying single table, now we need to do (cross) product of two tables.
- Tables can be merged with themselves using aliases.
- `select` and `where` clause can take arithmetic expressions.
- `where` can take boolean operators
- Set operations like `intersect`, `union` and subtraction `except` can be used to combine tables.
- In multisets ("ALL"):
    - Union -> sum  of cardinality
    - Intersect -> minimum of cardinality
    - Except -> difference of cardinality

## Nested queries
- `where ... in ...` can be used to filter from a list. Instead of list we can have a subquery.
```sql
select *
from books
where authorid in
    (select authorid
     from authors
     where name ~ 'a.*z')
```
- Subquery operators:
    - `in`, `exists`
    - `not in`, `not exists`
    - `any`, `all`
- "view" of a table with a name.
```sql
create view view_name
as <select statement>
```
- subquery can be part of `from` clause, dynamically creating a table.

## Types of joins
- Inner join
    - pretty much same as default table join with where predicate.
```sql
select *
from A inner join B
on a.id = b.aid
where ...
```
- Natural join
    - Inner join that infer relations based on column names.
- [Left | Right] Outer join
    - preserve all unmatched rows from specified side.
    - unmatched columns in another table will be marked NULL.
- Full outer join
    - preserve unmatched rows from both side.

```sql
select *
from A [ full | left | right ] outer join B
on a.id = b.aid
where ...
```
- examples: [https://blog.codinghorror.com/a-visual-explanation-of-sql-joins/](https://blog.codinghorror.com/a-visual-explanation-of-sql-joins/)
![Venn diagram of sql joins](https://i.stack.imgur.com/UI25E.jpg)

## Null values
- Can  be filtered in where clause with `is (not) null`.
- Null in boolean operations
    - False and null -> False
    - True or null -> True
    - Everything else with null -> null
- NULL are ignored during aggregations
