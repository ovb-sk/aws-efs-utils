FROM redhat/ubi10@sha256:17296ded9ab581e9a9019a71e15576c0a99813d8870eb6758e32b5bf93c5ff71

# Update package manager and system
RUN dnf update -y && dnf clean all

# Install build dependencies
RUN dnf install -y git rpm-build make rust cargo openssl-devel \
    && dnf clean all

# Set up the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
