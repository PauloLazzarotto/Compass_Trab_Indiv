#!/bin/bash

dataEHora=$(date +"%Y-%m-%d %H:%M:%S")

result=$(systemctl is-active httpd.service)

if [ $result == "active" ]; then
  status=$"online"
  mensagem=$"O Apache está de pé e funcionando."
else
  status=$"offline"
  mensagem=$"O Apache está offline."
fi
