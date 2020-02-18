build8:
	docker build --pull --force-rm \
		-f Dockerfile.8 \
		-t lest/centos-rpm-builder:8 \
		.

build7:
	docker build --pull --force-rm \
		-f Dockerfile.7 \
		-t lest/centos-rpm-builder:7 \
		.

build6:
	docker build --pull --force-rm \
		-f Dockerfile.6 \
		-t lest/centos-rpm-builder:6 \
		.
