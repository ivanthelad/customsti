FROM jboss-webserver-3/tomcat7-openshift


MAINTAINER imk@redhat.com
USER root
RUN rm -f /usr/local/sti/assemble
ADD assemble /usr/local/sti/assemble
RUN chmod 755 /usr/local/sti/assemble

USER jboss

CMD ["/opt/webserver/bin/launch.sh"]
