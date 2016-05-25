# Docker CentOS 7 RPM Builder

Example usage:

``` shell
docker run --rm \
  -v ${PWD}:/rpmbuild \
  lest/centos7-rpm-builder \
  bin/build-spec SPECS/my-package.spec
```
