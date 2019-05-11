FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl git -y
RUN git clone https://github.com/aws/aws-elastic-beanstalk-cli-setup.git
RUN ./aws-elastic-beanstalk-cli-setup/scripts/bundled_installer
RUN echo 'export PATH="/root/.ebcli-virtual-env/executables:$PATH"' >> ~/.bash_profile 
RUN /bin/bash -c "source ~/.bash_profile"

