#!/bin/bash

echo "Criando os diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo "Criando os grupos de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Criando os usuários e adicionando aos grupos"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN


echo "Especificando as permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /vem
chmod 770 /sec
chmod 777 /publico


echo "Fim do script"
