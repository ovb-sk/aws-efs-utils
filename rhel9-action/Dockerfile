FROM redhat/ubi9@sha256:bbac76ac0310eefd6298ed3ab3c1710e1c842f1f778800de0f49e660b402bdc5

# Update
RUN dnf update -y && dnf clean all

# Install build dependencies
RUN dnf install -y git rpm-build make rust cargo openssl-devel \
    && dnf clean all

# Set up the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
