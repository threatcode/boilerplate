# Official Threatcode Linux Docker

This Threatcode Linux Docker image provides a minimal base install of the latest
version of the Threatcode Linux Rolling Distribution. There are no tools added
to this image, so you will need to install them yourself. 

For details about Threatcode Linux metapackages, check
<https://www.threatcode.github.io/blog/threatcode-linux-metapackages/>.

# Weekly updates

Docker images are updated weekly and pushed to the Docker Hub at
<https://hub.docker.com/u/threatcodelinux>.

You can run those images with either Docker or Podman, at your convenience:

```
# Podman
podman run --rm -it threatcode-rolling
# Docker
docker run --rm -it threatcodelinux/threatcode-rolling
```

For more documentation, refer to:
* <https://www.threatcode.github.io/docs/containers/using-threatcode-podman-images/>
* <https://www.threatcode.github.io/docs/containers/using-threatcode-docker-images/>

# How to build those images

The easiest is probably to build via the GitLab infrastructure. All it takes is
to fork the GitLab repository, and let the CI/CD build it for you. Images are
rebuilt every time a commit is pushed, and can be found in the GitLab Registry
that is associated with your fork.

For those who prefer to build locally, there is the script `build.sh`.  A good
starting point is `./build.sh -h`.
