#!/bin/bash

# Mostrar un cuadro de diálogo de aceptar/cancelar
pkill -f menuPIDS
yad --title="Confirmar acción" --text="¿Estás seguro de que quieres continuar?" --button="Aceptar:0" --button="Cancelar:1"

# Comprobar el código de salida para determinar qué botón se presionó
if [[ $? == 0 ]]; then
    echo "El usuario ha aceptado."
else
    echo "El usuario ha cancelado."
    bash menu.sh
fi
