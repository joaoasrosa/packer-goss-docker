# Introduction
Docker image with packer and goss provisioner. It allows CI servers to use this image, speeding the build and deploy process.

[![Build Status](https://dev.azure.com/joaoasrosa/joaoasrosa/_apis/build/status/joaoasrosa.packer-goss-docker)](https://dev.azure.com/joaoasrosa/joaoasrosa/_build/latest?definitionId=4)

For more information about the components:
- [Packer](https://www.packer.io/)
- [Goss](https://github.com/aelsabbahy/goss)
- [Packer provisioner goss](https://github.com/YaleUniversity/packer-provisioner-goss)

## Getting Started
To develop and test the container image you need:
1. [Docker CE 18.x](https://www.docker.com/) 
2. [Google Container Tools](https://github.com/GoogleContainerTools/)
3. Your preferred IDE

## Build and Test
In order to build and test in your development machine you:
1. Form your command line navigate to the root of the repo
2. Run `docker build -f Dockerfile -t joaoasrosa/packer-goss:latest .`
3. Run `container-structure-test test --image joaoasrosa/packer-goss:latest --config ./command-tests.yaml`

## Contribute
If the build and test is sucessful, you can commit the changes to the server (in a branch). After it open the PR for review. Please note that all the commits need to be signed. You can follow the GitHub [instructions](https://help.github.com/articles/signing-commits/).

After it has been approved, the container will be available to the developer community.

Do not forget to add your name and email to the `maintainers` label within the `Dockerfile`. You deserve credit! :)
