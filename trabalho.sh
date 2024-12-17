#!/bin/bash

# 1
groupadd aluno
groupadd professor
groupadd gerente

# 2
mkdir -p /srv
chown root:gerente /srv

# 3
mkdir -p /srv/alunos /srv/professores
chown root:aluno /srv/alunos
chown root:professor /srv/professores

# 4
chmod 751 /srv
chmod 770 /srv/alunos
chmod 770 /srv/professores

# 5
useradd -m -d /srv/professores/bruno -g professor bruno

# 6
usermod -aG gerente bruno

# 7
useradd -m -d /srv/alunos/joao -g aluno joao
useradd -m -d /srv/alunos/maria -g aluno maria

# 8
usermod -e 2024-12-31 -f 90 joao
usermod -e 2024-12-31 -f 90 maria
