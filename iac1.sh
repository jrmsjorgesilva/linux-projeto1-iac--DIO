#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd representante_marabraz -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd representante_lojas_su -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd representante_ricardo_eletro -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd representante_casasbahia -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd representante_gontijo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd representante_petz -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd representante_abrinc -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd representante_allstar -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd representante_camicado -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."

