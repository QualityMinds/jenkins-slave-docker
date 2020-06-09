FROM jenkins/inbound-agent

USER root

RUN curl -fL https://github.com/krallin/tini/releases/download/v0.5.0/tini-static -o /bin/tini && chmod +x /bin/tini

RUN curl -fsSL https://get.docker.com/ | sh
ENTRYPOINT ["/bin/tini", "--", "jenkins-agent"]
