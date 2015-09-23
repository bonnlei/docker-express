# Developing NodeJs Application With Docker

After trying to build a NodeJs development environment under MAC OSX with Vagrant Docker proxy, Vagrant CoreOS, I think 
that it is a simplest way to use [Kitematic](https://kitematic.com/) and Docker commands. To solve the sync problem, you
 can use [docker-osx-dev](https://github.com/brikis98/docker-osx-dev) and see "[A productive development environment with Docker on OS X](http://www.ybrikman.com/writing/2015/05/19/docker-osx-dev/)" and "[Rapid Local Development with Vagrant, Docker and Node.js](http://kevzettler.com/programming/2015/06/07/rapid_local_development_vagrant_docker_node.html)"   


## Docker Usages
    
### 1. Install [VirtualBox](https://www.virtualbox.org/)   
   
### 2. Install [Kitematic](https://kitematic.com/)
If you open Kitmatic, it will create a new image called "default" in VirtualBox. 
    
    
### 3. Install [docker-osx-dev](https://github.com/brikis98/docker-osx-dev) 
 
Install [fswatch](https://github.com/emcrisostomo/fswatch)

```bash
$ brew install fswatch
```
 
You write the following ENV for docker-osx-dev.

```bash
$ echo "export DOCKER_MACHINE_NAME=default" >> ~/.bash_profile
```
Or run the following command before executing **docker-osx-dev**
    
    $(docker-machine env default)
    
### 4. Build a new docker image
Open **Kitematic Docker CLI** and run the following command.

```bash      
 $ docker build -t bonnlei/express . 
```
### 5. Create a new docker container
Run `docker-osx-dev` in the project path and run the following command in other **Kitematic Docker CLI** 
      
```bash      
 $ docker-compose up 
```
### 6. Test
You can use **Kitematic**  start and stop container and config ports and sync folders. You change `index.js` and check if something changed. 

### 7. Put image to **Docker Hub**
After Creating a new repository on Docker Hub, you do

```bash      
 $ docker login -u user -p password
 $ docker tag bonnlei/express bonnlei/express:1.0 
 $ docker push bonnlei/express:1.0
```
      
## References
   +  [Setting up a development environment using Docker and Vagrant](http://blog.zenika.com/index.php?post/2014/10/07/Setting-up-a-development-environment-using-Docker-and-Vagrant)
   +  [Rapid Local Development with Vagrant, Docker and Node.js](http://kevzettler.com/programming/2015/06/07/rapid_local_development_vagrant_docker_node.html)
   +  [Vagrant with Docker: How to set up Postgres, Elasticsearch and Redis on Mac OS X](http://www.maori.geek.nz/vagrant_with_docker_how_to_set_up_postgres_elasticsearch_and_redis_on_mac_os_x/)
   +  [Development Environments With Vagrant and Docker](http://theunic.github.io/2014/12/29/development-environments-with-vagrant-and-docker.html)
   +  [Ansible Vagrant profile for Docker](https://github.com/geerlingguy/ansible-vagrant-examples/tree/master/docker)
   +  [First steps with provisioning of Docker containers using Vagrant as provider](https://technology.amis.nl/2015/08/22/first-steps-with-provisioning-of-docker-containers-using-vagrant-as-provider/)
   +  [Service discovery with Docker - 2](http://adetante.github.io/articles/service-discovery-with-docker-2/)
   +  [How I develop in PHP with CoreOS and Docker](https://www.jverdeyen.be/docker/how-php-symfony-coreos-docker/)
   +  [Docker Cheat Sheet](https://github.com/wsargent/docker-cheat-sheet)
   +  [A productive development environment with Docker on OS X](http://www.ybrikman.com/writing/2015/05/19/docker-osx-dev/)

## Tools (helpful but not used)
   +  [vagrant-cachier](http://fgrehm.viewdocs.io/vagrant-cachier/) 
   +  [vagrant-docker-exec](https://github.com/wkolean/vagrant-docker-exec)
   +  [vagrant-docker-compose](https://github.com/leighmcculloch/vagrant-docker-compose)


