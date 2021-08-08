# Blockchain Creatures ROI Calculator Database

Spins up a Postgres DB docker container for easy use on any machine.
=======================================================


## How to use

`docker-compose up`

This will spin up an instance of Postgres 10.12 and bind it to port 5432 of your localhost.  If you have postgres running locally already then either stop it or change the port in the docker-compose file.

`./docker-sqitch.sh deploy`

This will pull down the latest Sqitch image in docker and immediately run the sqitch deploy command.  You can run any sqitch commands using that executable file.

If you want to check postgres, you can log in directly using psql.

`psql -h localhost -U yoc_sqitch -d yoc_database_dev`

Use the password 12341234
