FROM hashicorp/packer:1.3.3
LABEL maintainers="João Rosa <joaoasrosa@gmail.com>"

ENV PACKER_VERSION=1.3.3
ENV PACKER_PROVISIONER_GOSS_VERSION=0.3.0

ADD https://github.com/YaleUniversity/packer-provisioner-goss/releases/download/v${PACKER_PROVISIONER_GOSS_VERSION}/packer-provisioner-goss-v${PACKER_PROVISIONER_GOSS_VERSION}-linux-amd64 ./

RUN mv ./packer-provisioner-goss-v${PACKER_PROVISIONER_GOSS_VERSION}-linux-amd64 /bin/packer-provisioner-goss
RUN chmod +x /bin/packer-provisioner-goss

ENTRYPOINT ["/bin/packer"]