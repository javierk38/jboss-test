FROM centos
RUN yum -y install java-1.8.0-openjdk.x86_64
ADD wildfly-10 /opt/wildfly-10
WORKDIR /opt/wildfly-10
EXPOSE 8080, 9990
CMD ./standalone.sh -b 0.0.0.0
