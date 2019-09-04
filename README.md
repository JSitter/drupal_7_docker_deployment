# Drupal7 Docker Development Package
This project serves as a way to test modules and themes on a development server without having to setup the traditional LAMP stack. This does not provide a secure platform from which to deploy as the database credentials are commited into this public repo.

If you wish to alter this project to use your own environment variables please do so.

## Setup
In order to run this project docker must be installed on the host machine.

Run:

```
$ docker-compose build
```

followed by 

```
$ docker-compose up
```

This will start up the test database and apache servers inside a docker network.

Start you drupal installation this way.

1. Set up Drupal by visiting the address `localhost:8086/install.php`.

1. Configure Drupal Installation.

1. Profit!!!!

The `sites` folder is mounted in the docker container as a volume, so any changed can be made without rebuilding the image.
