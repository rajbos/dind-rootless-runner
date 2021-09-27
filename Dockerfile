FROM docker:dind-rootless

VOLUME [/home/rootless/.local/share/docker]
VOLUME [/opt/hostedtoolcache]

USER rootless