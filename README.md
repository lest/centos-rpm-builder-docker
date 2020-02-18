# Docker CentOS RPM Builder

Example usage:

``` shell
docker run --rm \
  -v ${PWD}:/rpmbuild \
  lest/centos-rpm-builder:8 \
  bin/build-spec SPECS/my-package.spec
```
