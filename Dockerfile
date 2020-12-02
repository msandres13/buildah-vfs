FROM registry.fedoraproject.org/fedora:latest

RUN dnf -y update; dnf -y install buildah xz
ADD https://raw.githubusercontent.com/msandres13/buildah-vfs/main/oc-entry.sh /
ADD https://raw.githubusercontent.com/msandres13/buildah-vfs/main/test.sh /

RUN chmod 755 /oc-entry.sh /test.sh
CMD ["/bin/bash", "-c", "/oc-entry.sh"]
