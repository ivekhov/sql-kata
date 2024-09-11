## SQL Habit


### Starting 

Python:

activate python env for working in notebook:
`emulate bash -c '. /Users/ivan/work_local/hexletpy/py-concepts/.venv/bin/activate'`

Docker: 
 

1 Creating docker image:
`$ docker run --name postgres-container -e POSTGRES_PASSWORD={see in .env} -p 5432:5432 -v postgres-data:/var/lib/postgresql/data -d postgres`

2 List of dockers:
`$ docker ps`

Access: 
`$ docker exec -it postgres-container psql -U postgres`

## Dates

Between dates

```sql
signup_date BETWEEN '2018-01-01' AND '2018-01-07'
```

## CASE statement

```sql
select 
    case 
        when age <= 16 then 'youth'
        when age between 17 and 25 then 'young_adult'
        when age between 26 and 35 then 'adult'
        when age between 36 and 45 then 'middle_aged'
        else 'aged' 
    end as age_group,
    *
from users;


-- inside function
COUNT(CASE WHEN status = 'customer' THEN id ELSE NULL END)


-- the same result
-- This is because the COUNT() function ignores NULL values.
SELECT
  COUNT(CASE WHEN status = 'customer' THEN id END),
  COUNT(CASE WHEN status = 'customer' THEN 1 END),
  COUNT(CASE WHEN status = 'customer' THEN TRUE END),
  COUNT(CASE WHEN status = 'customer' THEN FALSE END),
  COUNT(CASE WHEN status = 'customer' THEN status END),
  COUNT(CASE WHEN status = 'customer' THEN 'customer' END)
FROM users;



```


## tbc

https://www.sqlhabit.com/content/lessons/type-casting