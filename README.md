# Airflow educational project
We are trying to build a simple docker image for airflow project 

### Plan  
1) Try implement heroku project in docker and deploy it in the clould https://medium.com/@damesavram/running-airflow-on-heroku-ed1d28f8013d
2) ~~Procfile is similar to bash cli command one wants to run~~
3) Connect to postgress https://towardsdatascience.com/local-development-set-up-of-postgresql-with-docker-c022632f13ea
```
psql postgresql://<username>:<databasepassword>@postgres:5432/<database>
```



### Done
  -[x] what is `airflow db init`? This will create all the necessary tables in the database that Airflow will use to store its metadata.
  -[x] then launch `airflow webserver --port=5000` and `docker run -p 5000:5000 airflow-docker-name`, then it will be available on the localhost
  -[ ] deploy to the cloud 


### HOW TO RUN
1) launch postgres
2) launch airflow
