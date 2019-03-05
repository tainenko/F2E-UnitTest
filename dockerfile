From node:10.15.1
MAINTAINER Tony.Ko
#COPY package.json 
COPY agent.jar /root
WORKDIR /root
Run apt-get update && apt-get install -y default-jdk
Run npm install -g jest && yarn add --dev jest-junit
#CMD ["java","-jar","agent.jar","-jnlpUrl","https://jenkins.etzone.net/computer/F2E-NIghtwatch/slave-agent.jnlp","-secret","3a46b2dfd7e25d9c3c16d89d6f59246ee3a9b54eb8d5fa004ccd7a589f7b5b24","-workDir",'"/"']
