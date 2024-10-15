#!/bin/bash
dominio=$1
for i in $(cat -e Subdomain.txt)
do
  subdominio=$(echo $i | cut -d "^" -f 1)
  host $subdominio.$dominio
done
