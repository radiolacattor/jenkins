
### How to deploy and configure: ###

##### 1. Generate SSH key on Host machine and put *id_rsa.pub* near the Dockerfile

`ssh-keygen`

I use default ssh-key name *id_rsa*

##### 2. Build agent image from the Dockerfile

`docker build -t jenkins/agent .`

##### 3.  Run docker-compose

`docker docker-compose up -d`

##### 4. Configure jenkins and set up agent
- Set credentials SSH private key, generated in the first point, and username

![1](/images/1.png)
![2](/images/2.png)

- Add Jenkins agent

![3](/images/3.png)
![4](/images/4.png)
![5](/images/5.png)
![6](/images/6.png)
![7](/images/7.png)
