FROM redhat/ubi10@sha256:8405dd7146117f019670429f93ce044f0839f47ff81ec45bb53cf528f1f6ce11

# Update package manager and system
RUN dnf update -y && dnf clean all

# Install build dependencies
RUN dnf install -y git rpm-build make rust cargo openssl-devel \
    && dnf clean all

# Set up the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
