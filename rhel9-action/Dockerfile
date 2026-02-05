FROM redhat/ubi9@sha256:b8923f58ef6aebe2b8f543f8f6c5af15c6f9aeeef34ba332f33bf7610012de0c

# Update
RUN dnf update -y && dnf clean all

# Install build dependencies
RUN dnf install -y git rpm-build make rust cargo openssl-devel \
    && dnf clean all

# Set up the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
