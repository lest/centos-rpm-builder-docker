# Docker CentOS RPM Builder

Example usage:

``` shell
docker run --rm \
  -v ${PWD}:/rpmbuild \
  ghcr.io/lest/centos-rpm-builder:8 \
  bin/build-spec SPECS/my-package.spec
```
