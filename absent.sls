docker:
  pkgrepo.absent:
    - name: deb http://get.docker.io/ubuntu docker main
    - key_url: https://get.docker.io/gpg
    - file: /etc/apt/sources.list.d/docker.list
  pkg.purged:
    - name: lxc-docker
    - require:
      - pkgrepo: docker