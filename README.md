# AWS EFS Utils RPMs

Automated builds of AWS EFS Utils for RHEL compatible distributions.

## Why

AWS doesn't provide pre-built RPMs for all Linux distributions. This repository automatically builds RPMs from the official [aws/efs-utils](https://github.com/aws/efs-utils) source for RHEL 9 and RHEL 10.

## Download

Get the latest RPMs from [Releases](../../releases).

## Install

```bash
sudo dnf install aws-efs-utils-*.rpm
```

## Build Status

RPMs are automatically built weekly from the latest upstream release.

## References

Build approach inspired by:
- https://some-natalie.dev/blog/container-build-rpms/
- https://github.com/some-natalie/fedora-acs-override
