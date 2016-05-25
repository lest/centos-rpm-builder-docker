build:
	docker build --pull --force-rm \
		-t lest/centos7-rpm-builder \
		.
