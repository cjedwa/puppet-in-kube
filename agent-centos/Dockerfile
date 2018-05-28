FROM centos:7

ENV PUPPET_AGENT_VERSION="5.5.1"

LABEL org.label-schema.maintainer="Cody Edwards<cjedwa@sandia.gov>" \
      org.label-schema.vendor="Puppet" \
      org.label-schema.url="https://github.com/puppetlabs/puppet-in-docker" \
      org.label-schema.name="Puppet Agent(Centos)-persist after run" \
      org.label-schema.license="Apache-2.0" \
      org.label-schema.version=$PUPPET_AGENT_VERSION \
      org.label-schema.vcs-url="https://github.com/puppetlabs/puppet-in-docker" 

# get dumb-init --cje

# install puppet repos and agent --cje
RUN rpm -Uvh https://yum.puppetlabs.com/puppet5/puppet5-release-el-7.noarch.rpm && \
    #yum upgrade -y && \
    #yum update -y && \
    yum install -y puppet-agent-"$PUPPET_AGENT_VERSION" wget && \
    yum clean all  
RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.1/dumb-init_1.2.1_amd64 && \
    chmod +x /usr/local/bin/dumb-init

ENV PATH=/opt/puppetlabs/server/bin:/opt/puppetlabs/puppet/bin:/opt/puppetlabs/bin:$PATH

COPY health.sh /
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
#CMD ["foreground"]

COPY Dockerfile /
