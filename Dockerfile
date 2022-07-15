#	-----------------------------
# Instruction for Dockerfile to create a new image on top of the base image (openjdk)
# Using the base image openjdk: latest
FROM openjdk:latest
WORKDIR /usr/share
# Make directory named bravo         
RUN mkdir usr/share/bravo
# Copying myfile1.txt to the containers /usr/share directory
COPY ./java_lang/*.java /usr/share/bravo
#  
