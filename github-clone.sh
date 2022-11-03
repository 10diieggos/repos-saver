#!/bin/bash

mkdir my-github-repos
cd my-github-repos
repositorios=$(curl -s https://api.github.com/users/10diieggos/repos | egrep "ssh_url" | cut -d" " -f6 | sed 's/[",]//g')

for repositorio in $repositorios
do 
  git clone $repositorio
done