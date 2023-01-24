# Airflow educational project

### Plan  
1) Try implement heroku project in docker and in the clould https://medium.com/@damesavram/running-airflow-on-heroku-ed1d28f8013d
2) Procfile is similar to bash cli command one wants to run
3) Connect to postgress https://towardsdatascience.com/local-development-set-up-of-postgresql-with-docker-c022632f13ea
```
psql postgresql://<username>:<databasepassword>@postgres:5432/<database>
```

We are trying to build a simple docker image for airflow project 


1) Done
	- what is `airflow db init`? This will create all the necessary tables in the database that Airflow will use to store its metadata.
	- then launch airflow webserver --port=5000 and docker run -p 5000:5000 airflow-docker-name, then it will be available on the localhost
	- https://medium.com/@damesavram/running-airflow-on-heroku-ed1d28f8013d - continue with this tutorial
