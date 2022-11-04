#!/usr/bin/bash

#Desativando o Mouse por lista de Device-ID
echo "Desativando o Mouse por lista de Device-ID"
xinput | grep -i mouse | grep -o [0-9][0-9] > temp-id-disable
for counter in $(cat temp-id-disable); do xinput enable $counter; done 

#Ativando o Mouse por lista de Device-ID
##for counter in $(cat temp-id-disable); do xinput enable $counter; done 