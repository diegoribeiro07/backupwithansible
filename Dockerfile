FROM centos:centos7
MAINTAINER Diego Ribeiro <diego.ribeirot@gmail.com>
RUN yum clean all && \
    yum -y install epel-release && \
    yum -y install PyYAML python-jinja2 python-httplib2 python-keyczar python-paramiko python-setuptools python-pip git openssh-server openssh-clients vim
RUN yum -y install ansible
RUN ansible-galaxy collection install community.network
RUN ansible-galaxy collection install nokia.sros

