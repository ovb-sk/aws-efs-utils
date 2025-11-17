FROM redhat/ubi9@sha256:dcd8128d7620b06e4bce291f30db6ffcfa339b04e6d66081e36eb8e2b1b700f8

# Update
RUN dnf update -y && dnf clean all

# Install build dependencies
RUN dnf install -y git rpm-build make rust cargo openssl-devel \
    && dnf clean all

# Set up the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
