# gespyme-database
Repository to manage gespyme database creation.

For the deployment of the containers:
1. Situate the terminal is /db folder.
2. Execute 
`docker-compose up --build`
3. Execute `docker ps` to verify that the containers has been deployed.

** If the 5 containers are not deployed in the first execution, cut the execution with Cntl +C and execute again. 
** If the containers are corrupted for any reason and to force the reexecution of the SQL diles, execute `docker-compose down -v`
to clean the volumes and `docker-compose down --rmi all` to clean the images and then repeat the steps 1,2,3. 