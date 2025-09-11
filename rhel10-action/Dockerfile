FROM redhat/ubi10@sha256:fe8738a6e2fb7595227c058b18250ff60a8a3ea0078296d8b46e0a419738a69c

# Update package manager and system
RUN dnf update -y && dnf clean all

# Install build dependencies
RUN dnf install -y git rpm-build make rust cargo openssl-devel \
    && dnf clean all

# Set up the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
