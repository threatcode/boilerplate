all: rootfs test build build-extra publish

rootfs:
  ./scripts/build-rootfs.sh

test:
	./scripts/docker-test.sh

build:
	./scripts/docker-build.sh

build-extra
  ./scripts/docker-extra.sh

build-extra
  ./scripts/docker-publish.sh
