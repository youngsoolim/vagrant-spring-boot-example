#!/bin/bash
sudo add-apt-repository ppa:cwchien/gradle
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update

# java SDK (OpenJDK)
sudo apt-get install -y openjdk-8-jdk

# Gradle
sudo apt-get install -y gradle

sudo cp /vagrant/vagrant/build.gradle /vagrant/spring/build.gradle

# Spring Boot CLI
sudo mkdir /opt/spring

sudo wget http://repo.spring.io/release/org/springframework/boot/spring-boot-cli/1.3.2.RELEASE/spring-boot-cli-1.3.2.RELEASE-bin.tar.gz

sudo tar -xvzf spring-boot-cli-1.3.2.RELEASE-bin.tar.gz

sudo mv spring-1.3.2.RELEASE /opt/spring

echo 'export SPRING_HOME=/opt/spring/spring-1.3.2.RELEASE' >> ~/.bashrc
echo 'export PATH=$SPRING_HOME/bin:$PATH' >> ~/.bashrc
touch ~/.bashrc

# BASH completion
sudo ln -s ./spring-1.3.2.RELEASE/shell-completion/bash/spring /etc/bash_completion.d/spring
