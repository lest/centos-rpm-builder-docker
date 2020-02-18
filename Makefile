build_centos6:
	docker build --pull --force-rm \
		--tag lest/centos-rpm-builder:6 \
		--file Dockerfile.centos6 .
build_centos7:
	docker build --pull --force-rm \
		--tag lest/centos-rpm-builder:7 \
		--file Dockerfile.centos7 .
build_centos8:
	docker build --pull --force-rm \
		--tag lest/centos-rpm-builder:8 \
		--file Dockerfile.centos8 .

build: build_centos6 build_centos7

test: build	test_centos7 test_centos6 

test_centos6:
	docker run --rm \
		-v ${PWD}/tests/:/rpmbuild/SOURCES/ \
		-v ${PWD}/_dist_c6:/rpmbuild/ \
		lest/centos-rpm-builder:6 build-spec SOURCES/test1.spec

test_centos7:
	docker run --rm \
		-v ${PWD}/tests/:/rpmbuild/SOURCES/ \
		-v ${PWD}/_dist_c7:/rpmbuild/ \
		lest/centos-rpm-builder:7 build-spec /rpmbuild/SOURCES/test1.spec

test_centos8:
	docker run --rm \
		-v ${PWD}/tests/:/rpmbuild/SOURCES/ \
		-v ${PWD}/_dist_c8:/rpmbuild/ \
		lest/centos-rpm-builder:8 build-spec /rpmbuild/SOURCES/test1.spec

clean:
	rm -rf _dist
	rm **/*.tar.gz
	rm **/*.jar
