docker:
  pkgrepo.managed:
    - name: deb http://get.docker.io/ubuntu docker main
    - key_url: https://get.docker.io/gpg
    - file: /etc/apt/sources.list.d/docker.list
  pkg.installed:
    - name: lxc-docker
    - require:
      - pkgrepo: docker
  service.running:
    - name: docker

docker-extras:
  pkg.installed:
    - name: linux-image-extra-{{grains['kernelrelease']}}