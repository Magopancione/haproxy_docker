docker build -t my-haproxy .
docker run -d -p 80:80 --name my-running-haproxy my-haproxy 
