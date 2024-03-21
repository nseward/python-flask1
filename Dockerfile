FROM registry.access.redhat.com/ubi8/python-36

# Add application sources to a directory that the assemble script expects them
# and set permissions so that the container runs without root access
USER 0
ADD app.py /tmp/src
RUN /usr/bin/fix-permissions /tmp/src
USER 1001

EXPOSE 3000

# Install the dependencies
RUN /usr/libexec/s2i/assemble

# Set the default command for the resulting image
CMD /usr/libexec/s2i/run
