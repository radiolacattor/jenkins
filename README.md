### How to deploy and configure: ###

##### 1. Generate SSH key on Host machine and put it near the Dockerfile

`ssh-keygen`

I use default ssh-key name *id_rsa*

##### 2. Build agent image from the Dockerfile

`docker build -t jenkins/agent .`

##### 3.  Run docker-compose

`docker docker-compose up -d`

##### 4. Configure jenkins and set up agent