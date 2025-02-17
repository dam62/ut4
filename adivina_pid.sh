#!/bin/bash

pid_script=$$
intentos=0
# echo "Has entrado al script: $pid_script"
# read -n1 -p "Pulsa una tecla"

# -eq es igual
# -lt menor que
# -gt mayor que

while [[ true ]]; do
	if [[ $intentos -eq "10" ]]; then
		read -n1 -p "Has agotado los 10 intentos"
		break
	fi
	
	read -p "Indica el PID: " user_pid
	# intentos=$(( intentos + 1 ))
	((intentos++))
	
	if [[ $user_pid  -eq $pid_script ]]; then # igual
		echo "Has utilizado $intentos intentos"
		read -n1 -p "HAS ACERTADO"
		break
	elif [[ $user_pid -lt $pid_script ]]; then # menor
		echo "Has utilizado $intentos intentos"
		read -n1 -p "Has fallado 💀️, el PID es menor 👇️"
	elif [[ $user_pid -gt $pid_script ]]; then # mayor
		echo "Has utilizado $intentos intentos"
		read -n1 -p "Has fallado 💀️, el PID es mayor 👆️"
	fi
done
