FROM docker:dind-rootless

VOLUME [/home/rootless/.local/share/docker]

ENV RUNNER_TOOL_CACHE=/opt/hostedtoolcache

# use root to create the folder
USER root

RUN mkdir /opt/hostedtoolcache \
    #&& chgrp docker /opt/hostedtoolcache \
    && chmod g+rwx /opt/hostedtoolcache

USER rootless