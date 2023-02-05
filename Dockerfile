FROM maven:3.6-jdk-11

RUN mvn --version

RUN apt-get update && apt-get -y install groff
RUN curl --silent --show-error --fail "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

RUN aws --version