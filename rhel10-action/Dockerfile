FROM redhat/ubi10@sha256:e2e6d908fbb30dd84ce0bcdf275130a72576bffcbf544d0d9813661870af8740

# Update package manager and system
RUN dnf update -y && dnf clean all

# Install build dependencies
RUN dnf install -y git rpm-build make rust cargo openssl-devel \
    && dnf clean all

# Set up the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
