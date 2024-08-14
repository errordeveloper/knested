FROM ubuntu:22.04@sha256:e6173d4dc55e76b87c4af8db8821b1feae4146dd47341e4d431118c7dd060a74

# Based on https://github.com/weaveworks/footloose/blob/e0a534425d93b0dc45e308b319b14622f60f39da/images/ubuntu18.04/Dockerfile

# Don't start any optional services except for the few we need.
RUN find /etc/systemd/system /lib/systemd/system \
      -path '*.wants/*' \
      -not -name '*journald*' \
      -not -name '*systemd-tmpfiles*' \
      -not -name '*systemd-user-sessions*' \
      -exec rm \{} \;

RUN apt-get update \
    && apt-get upgrade --yes \
    && apt-get install --yes --no-install-recommends \
      ca-certificates \
      conntrack \
      curl \
      dbus \
      ebtables \
      ethtool \
      iproute2 \
      iptables \
      iputils-ping \
      kmod \
      net-tools \
      socat \
      systemd \
    && SUDO_FORCE_REMOVE=yes apt-get remove --yes \
      dmsetup \
      sudo \
    && apt-get autoremove --yes \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN >/etc/machine-id
RUN >/var/lib/dbus/machine-id

RUN systemctl set-default multi-user.target
RUN systemctl mask \
      console-getty.service \
      dev-hugepages.mount \
      proc-sys-fs-binfmt_misc.automount \
      sys-fs-fuse-connections.mount \
      systemd-tmpfiles-setup.service \
      systemd-update-utmp.service \
    && true
RUN systemctl disable \
      networkd-dispatcher.service \
    && true

# https://www.freedesktop.org/wiki/Software/systemd/ContainerInterface/
STOPSIGNAL SIGRTMIN+3

RUN mkdir -p /boot

ARG KUBERNETES_VERSION

COPY download.sh /tmp/download.sh
RUN KUBERNETES_VERSION=${KUBERNETES_VERSION} /tmp/download.sh

COPY cilium-1.14-kubeadm.yaml /etc/cilium.yaml
COPY configure.sh /tmp/configure.sh
RUN /tmp/configure.sh

COPY preload-images.sh /usr/bin/preload-images.sh
COPY kubeadm-init.sh /usr/bin/kubeadm-init.sh
COPY is-cp-ready.sh /usr/bin/is-cp-ready.sh

COPY kubeadm-join.sh /usr/bin/kubeadm-join.sh
COPY is-node-ready.sh /usr/bin/is-node-ready.sh

ENV container container-other # systemd respects this
CMD ["/lib/systemd/systemd", "--unit=multi-user.target"]
