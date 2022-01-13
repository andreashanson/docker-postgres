docker run -e POSTGRES_PASSWORD=mysecretpassword -p 5432:5432 postgres

docker ps
get the container id

docker exec -it <container_id> bash
psql -U postgres
CREATE DATABASE test;

Get public ip ( make sure there is 2 spaces between -d\ and -f2 )
ifconfig -u | grep 'inet ' | grep -v 127.0.0.1 | cut -d\  -f2 | head -1

Connect to postgres container with the public ip
psql -h <public ip> -p 5432 -U postgres

type in pw "mysecretpassword"

psql -h 192.168.0.9 -p 5432 -U postgres -f migrations/1_CREATE_TABLE_CONSUMPTIONS.sql 
