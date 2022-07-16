#	-----------------------------
# Instruction for Dockerfile to create a new image on top of the base image (openjdk)
# Using the base image openjdk: latest
FROM openjdk:latest
WORKDIR /usr/share
# Make directory named bravo         
RUN mkdir bravo
# Copying myfile1.txt to the containers /usr/share directory
COPY ./java_lang/*.java /usr/share/bravo
# Set working directory to where application will compile and run
WORKDIR /usr/share/bravo
# Compile java application
RUN javac hello.java
#
