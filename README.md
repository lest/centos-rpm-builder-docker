Master [![Build Status](https://travis-ci.org/zoonage/centos-rpm-builder-docker.svg?branch=master)](https://travis-ci.org/zoonage/centos-rpm-builder-docker)

Staging [![Build Status](https://travis-ci.org/zoonage/centos-rpm-builder-docker.svg?branch=staging)](https://travis-ci.org/zoonage/centos-rpm-builder-docker)


Centos7 [![Docker Repository on Quay](https://quay.io/repository/zoonage/centos7-rpm-build/status "Docker Repository on Quay")](https://quay.io/repository/zoonage/centos7-rpm-build)

Centos6 [![Docker Repository on Quay](https://quay.io/repository/zoonage/centos6-rpm-build/status "Docker Repository on Quay")](https://quay.io/repository/zoonage/centos6-rpm-build)

# Description

Forked from lest/centos7-rpm-builder-docker to add support in for Centos6. Nearly all the work was done by Sergey Nartimov (lest).

## Using

### Centos 6
`docker pull quay.io/zoonage/centos6-rpm-build`

### Centos 7
`docker pull quay.io/zoonage/centos7-rpm-build`

# Contributing

Please feel free to open a PR against the staging branch and open issues for any problems.

# Docker CentOS 7 RPM Builder

Example usage:

``` shell
docker run --rm \
  -v ${PWD}:/rpmbuild \
  <TBA>/centos7-rpm-builder \
  bin/build-spec SPECS/my-package.spec
```

# Docker CentOS 6 RPM Builder

Example usage:

``` shell
docker run --rm \
  -v ${PWD}:/rpmbuild \
  <TBA>/centos6-rpm-builder \
  bin/build-spec SPECS/my-package.spec
```
