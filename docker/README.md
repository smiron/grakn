Start the server
docker run -dt -p 8085:80 -p 4567:4567 c13c566e5453

Execute query:
docker exec -it <ContainerId> ./graql console -e 'match $x sub entity; get;'