#!/bin/bash

#Atualização
sudo apt-get update
sudo apt-get upgrade -y

#Instalação Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

#Instalação Gitlab Runner
curl -L "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh" | sudo bash
sudo apt-get install gitlab-runner

#Permissão para o Gitlab Runner executar o Docker
sudo usermod -aG docker gitlab-runner

#Vincular o servidor ao repositório Git
sudo gitlab-runner register \
--non-interactive \
--url https://gitlab.com/ \
--registration-token GR1348941QoLyuRhVBYf19x8TJ_2z \
--executor shell \
--description "Docker Server" \
--tag-list "AWS,DOCKER"
