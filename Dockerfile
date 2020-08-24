FROM jenkins/jenkins:lts

USER root
RUN apt-get update
RUN apt-get install -y maven
CMD usermod -d /var/jenkins_home/ ${whoaim}
USER jenkins
ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/jenkins.sh"]
