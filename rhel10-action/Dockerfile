FROM redhat/ubi10@sha256:c9c81d3d11bfd56c4bb61a220d4598392b5fbc500df33f2b8e52fdd2cebb4944

# Update package manager and system
RUN dnf update -y && dnf clean all

# Install build dependencies
RUN dnf install -y git rpm-build make rust cargo openssl-devel \
    && dnf clean all

# Set up the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
