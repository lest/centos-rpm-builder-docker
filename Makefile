build_centos6:
	docker build --pull --force-rm \
		--tag zoonage/centos6-rpm-builder \
		--file Dockerfile.centos6 .
build_centos7:
	docker build --pull --force-rm \
		--tag zoonage/centos7-rpm-builder \
		--file Dockerfile.centos7 .

build: build_centos6 build_centos7

test: build	test_centos7 test_centos6

test_centos6:
	echo "TODO"
test_centos7:
	echo "TODO"
