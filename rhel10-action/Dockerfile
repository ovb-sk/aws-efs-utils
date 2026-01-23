FROM redhat/ubi10@sha256:8eb40a0d11d7ad057dc5f8ca60bf9a15dec60d0e9b4c9aab7d3ecf9182bb4986

# Update package manager and system
RUN dnf update -y && dnf clean all

# Install build dependencies
RUN dnf install -y git rpm-build make rust cargo openssl-devel \
    && dnf clean all

# Set up the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
