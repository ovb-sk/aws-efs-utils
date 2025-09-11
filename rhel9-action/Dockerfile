FROM redhat/ubi9@sha256:8f1496d50a66e41433031bf5bdedd4635520e692ccd76ffcb649cf9d30d669af

# Update
RUN dnf update -y && dnf clean all

# Install build dependencies
RUN dnf install -y git rpm-build make rust cargo openssl-devel \
    && dnf clean all

# Set up the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
