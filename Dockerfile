FROM ubuntu:jammy

RUN apt update && apt -y upgrade
RUN apt -y install git python3 virtualenv
RUN ln -s /usr/bin/python3 /usr/bin/python
RUN git clone https://github.com/aws/aws-elastic-beanstalk-cli-setup.git
RUN python ./aws-elastic-beanstalk-cli-setup/scripts/ebcli_installer.py
RUN ln -s /root/.ebcli-virtual-env/executables/eb /usr/bin/eb
