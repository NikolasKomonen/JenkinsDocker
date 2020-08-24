FROM jenkins/jenkins:lts

USER root
RUN apt-get update
RUN apt-get install -y maven
RUN usermod -d /var/jenkins_home/ jenkins
USER jenkins
ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/jenkins.sh"]
