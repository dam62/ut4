#!/bin/bash

datos=$(yad --form --width=300 --borders=20 --title="EVENTOS 📆" --text="Completa todos los campos" \
    --button=Aceptar:0 \
    --button=Cancelar:1 \
    --field="Hora:":NUM "0!0..23!1!" \
    --field="Minuto:":NUM "0!0..59!1!" \
    --date-format="%d/%m/%Y" \
    --field="Fecha: ":DT \
    --field="Todos los dias:":CHK \
    --field="  ⚠️ Al marcar invalida fecha":LBL \
    --field="Descripción:")
    
echo "$datos"
