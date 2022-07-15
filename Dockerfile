FROM ubuntu:latest
RUN apt update && apt install  openssh-server sudo -y
RUN groupadd sshgroup && useradd -ms /bin/bash -g sshgroup sshuser
RUN mkdir -p /var/jenkins_home && chown -R sshuser /var/jenkins_home
RUN mkdir -p /home/sshuser/.ssh
COPY id_rsa.pub /home/sshuser/.ssh/authorized_keys
RUN chown sshuser:sshgroup /home/sshuser/.ssh/authorized_keys && chmod 600 /home/sshuser/.ssh/authorized_keys
RUN service ssh start
RUN apt-get install openjdk-11-jdk -y && apt-get install git -y
# RUN apt-get -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common
# RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
# RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]