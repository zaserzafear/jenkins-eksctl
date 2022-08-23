FROM jenkins/jenkins:lts
USER root

# install aws cli
COPY ["awscliv2.zip", "."]
RUN unzip awscliv2.zip
RUN ./aws/install -i /usr/local/aws-cli -b /usr/local/bin
RUN rm awscliv2.zip

# install eksctl
COPY ["eksctl", "/usr/local/bin"]

# install kubectl
COPY ["kubectl", "/usr/local/bin/kubectl"]
