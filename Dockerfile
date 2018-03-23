FROM FROM haproxy:1.7
MAINTAINER D.F.

#SSL#VOLUME /certs:/certs

# Add personalized configuration
ADD haproxy.cfg /etc/haproxy/haproxy.cfg

# Add restart commands
ADD restart.bash /haproxy-restart

# Define working directory.
WORKDIR /etc/haproxy

# Define default command.
CMD ["bash", "/haproxy-start"]

# Expose ports.
EXPOSE 80
EXPOSE 443
EXPOSE 1883
