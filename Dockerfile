FROM jboss-webserver-3/tomcat7-openshift


MAINTAINER imk@redhat.com
USER root
RUN rm -f /usr/local/sti/assemble
ADD assemble /usr/local/sti/assemble
RUN chmod 755 /usr/local/sti/assemble

ONBUILD ADD  ./build.sh /tmp/build.sh
ONBUILD RUN [/tmp/build.sh]
USER jboss

CMD ["/opt/webserver/bin/launch.sh"]
