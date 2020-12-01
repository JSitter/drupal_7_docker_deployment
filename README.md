# Drupal 7 Docker Development Package
This project serves as a way to test modules and themes on a development server without having to setup the traditional LAMP stack. This does not provide a secure platform from which to deploy as the database credentials are commited into this public repo.

If you wish to alter this project to use your own environment variables please do so.

In order to run multiple Drupal projects one one machine simply rename the project directory from drupal_7_dockerized to the name of the project you're working on. Simply putting the project in another folder will not create a fresh Docker project.

## Setup

### 0) Make sure Docker is installed on your machine. Installation instructions can be found [here for Mac](https://docs.docker.com/docker-for-mac/install/) and [here for Linux](https://docs.docker.com/engine/install/ubuntu/)

### 1) Clone this repository into your preferred directory and in the terminal `cd` into the project directory. Run:

```
./install.sh
```

Wait for installation and docker image downloads to complete.
 
### 2) Run:
```
docker-compose up
```

This will start up the test database and apache servers inside a docker network.

1. Access your Drupal installation by visiting [localhost:8086](localhost:8086) in your browser.

1. Add the database credentials to Drupal. **The default credentials are**
Database Name: `d7app`
Database Username: `web`
Database Password: `pass`
Database address: `d7mysql` (located in the dropdown on the setup screen)


1. Profit!!!!

Use the `sites` folder that is created in the project directory upon installation for any custom modules, themes, etc to include in your site.
