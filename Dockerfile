FROM paas-docker-artifactory.gannettdigital.com/paas-centos7-base

RUN yum -y makecache fast
RUN yum -y update
RUN yum clean all

ADD terraform /usr/local/bin

ENV PATH /usr/local/bin/:/usr/bin:/bin
