# Desativando mouse

Estarei passando os passos que o repo faz para desativacao.

## 🚀 Começando

### Se script.sh estiver de acordo com o gosto do usuario.

### Movendo a rule para o /etc/udev/rules.d. Onde a rule fara com que cada vez que o dispositivo e conectado, ele se desconecte.
```
sudo cp mouse.rules /etc/udev/rules.d
```
### SCRIPT

- Ja existe  um binario pre-pronto para execucao.

```
#!/usr/bin/bash

#Desativando o Mouse por lista de Device-ID. E listado pelo comando xinput, logo o id do comando e atribuido a um arquivo.
echo "Desativando o Mouse por lista de Device-ID"
xinput | grep -i mouse | grep -o [0-9][0-9] > temp-id-disable
for counter in $(cat temp-id-disable); do xinput enable $counter; done 

#Ativando o Mouse por lista de Device-ID
##for counter in $(cat temp-id-disable); do xinput enable $counter; done 
```

EXEC
```
sudo /binary-file/binary
```
### Caso deseje fazer alteracoes e refazer o scritp.sh/binario.

```
sudo apt install shc
```
```
shc -f script.sh -o {nome-que-desejar}
```
#### Atencao que no ato de alterar o nome do arquivo, sem alterar o nome no mouse.rules.