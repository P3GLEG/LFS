FROM ubuntu:17.04
MAINTAINER K4ch0w <k4ch0w@linux.com>

# Make sure the package repository is up to date.
RUN apt-get update && apt-get install -y git openssh-server openjdk-7-jdk maven
&& sed -i 's|session    required     pam_loginuid.so|session    optional     pam_loginuid.so|g' /etc/pam.d/sshd
&& mkdir -p /var/run/sshd && adduser --quiet jenkins
&& $(echo "jenkins:jenkins" | chpasswd)
&& mkdir /home/jenkins/.m2
&& chown -R jenkins:jenkins /home/jenkins/.m2/ 
ADD settings.xml /home/jenkins/.m2/
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
