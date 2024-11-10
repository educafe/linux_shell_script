#!/bin/bash
env=("production" "development" "testing")
db_names=("prod_db" "dev_db" "test_db")

for i in "${!env[@]}"; do
  eval "${env[i]}_db='${db_names[i]}'"
done

echo "$production_db"   
echo "$development_db"  
echo "$testing_db"      

---------------------------------------------------------

server1_keys=("host" "port" "username")
server1_values=("localhost" "8080" "admin")

for i in "${!server1_keys[@]}"; do
  eval "${server1_keys[i]}='${server1_values[i]}'"
done

# Verify the variables were created
echo "$host"      
echo "$port"     
echo "$username"  