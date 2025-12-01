FROM redhat/ubi9@sha256:7daaafccb9cb594b5a737d248ab6adcc783ea7055291d4fcd799a1201326ca16

# Update
RUN dnf update -y && dnf clean all

# Install build dependencies
RUN dnf install -y git rpm-build make rust cargo openssl-devel \
    && dnf clean all

# Set up the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
