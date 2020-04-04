# Covid analysis using Juypter Notebooks and PostgreSQL database 

## To run the service:
`docker-compose run --rm --service-ports jupyter`
Then click the link in the output

## Accessing the DB using `psql`
`psql -h localhost -U postgres covid`
password: changeme

## TODOs
[x] create notebook
[x] create postgres
[x] fetch data
[x] transform data 
[x] upload data to postgres
[x] create materialized view to get death_changes (duplication of the raw data is not needed)
[x] output results to CSV
[] create rollup in notebook py
[] BUG: Afghanistan	2020-01-01	seems to have 2 values and not rolled up
[] clean up docker container and runtime instructions 