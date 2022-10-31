#!/bin/bash
echo "Inicializando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt p4ssw0rd) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt p4ssw0rd) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt p4ssw0rd) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt p4ssw0rd) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt p4ssw0rd) -G GRP_VEN 
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt p4ssw0rd) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt p4ssw0rd) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt p4ssw0rd) -G GRP_SEC
useradd rogério -m -s /bin/bash -p $(openssl passwd -crypt p4ssw0rd) -G GRP_SEC

echo "Dando as permissões as pastas"

chown root:GRP_ADM /adm
chmod 770 /adm
chown root:GRP_VEN /ven
chmod 770 /ven
chown root:GRP_SEC /sec
chmod 770 /sec

chmod 777 /publico

echo "..."
