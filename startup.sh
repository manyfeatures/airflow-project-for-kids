echo $PWD
echo $LS
#python /app/script.py
# init db
echo "airflow db init"
airflow db init

# create user
# These credentials will be saved inside the Postgres instance you have created earlier.
echo "airflow user creation"
airflow users create -r Admin -u admin -f yyy -l xxx -p admin -e duck@gg.com

# launch webserver on localhost:5000
echo "running web server"
airflow webserver --port=5000 --daemon & airflow scheduler