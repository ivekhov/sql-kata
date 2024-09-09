## SQL Habit trainigs


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




