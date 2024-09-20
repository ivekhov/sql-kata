/*
docker cp unit.sql postgres-container:/docker-entrypoint-initdb.d/unit.sql && docker exec -u postgres postgres-container psql sql-habit postgres -f docker-entrypoint-initdb.d/unit.sql 
*/

select * 
from purchases
limit 5;

