FROM ubuntu:18.04

RUN apt-get update && \
	apt-get install -y --no-install-recommends wget unzip openjdk-8-jdk

ENV PATH /apache-maven-3.6.3/bin:${PATH}
RUN wget https://repo.maven.apache.org/maven2/org/apache/maven/apache-maven/3.6.3/apache-maven-3.6.3-bin.zip && \
     unzip apache-maven-3.6.3-bin.zip && \
     mvn -version && \
     rm -rf apache-maven-3.6.3-bin.zip
