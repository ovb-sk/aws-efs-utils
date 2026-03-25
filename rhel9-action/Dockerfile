FROM redhat/ubi9@sha256:9e6e193bfc3596a84d2a32f42d6b1552398ec9735b9a4e893a0fc3c6fbccb381

# Update
RUN dnf update -y && dnf clean all

# Install build dependencies
RUN dnf install -y git rpm-build make rust cargo openssl-devel \
    && dnf clean all

# Set up the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
