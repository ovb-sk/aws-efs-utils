FROM redhat/ubi9@sha256:05fa0100593c08b5e9dde684cd3eaa94b4d5d7b3cc09944f1f73924e49fde036

# Update
RUN dnf update -y && dnf clean all

# Install build dependencies
RUN dnf install -y git rpm-build make rust cargo openssl-devel \
    && dnf clean all

# Set up the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
