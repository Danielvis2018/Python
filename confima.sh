#!/bin/bash
clear
read -p "Nome: " Nome
if [ "$Nome" == "$(cat banco.txt | grep ^$Nome | cut -d ':' -f 1 )" ]; then
read -p "Email: " Email
	if [ "$Email" == "$( cat banco.txt | grep $Email | cut -d ':' -f 2)" ]; then 
	read -p "Telefone: " Tel
		if [ "$Tel" == "$( cat banco.txt | grep -E '[(][0-9]{2}[)][" "][0-9]{4}+-[0-9]{4}' | cut -d ':' -f3)" ]; then  
		read -p "RG: " RG 
			if [ "$RG" == "$( cat banco.txt | grep -E '[0-9]{2}[.][0-9]{3}[.][0-9]{3}[-][0-9]{1}' | cut -d ':' -f4)" ]; then
			read -p "CPF: " CPF
				if [ "$CPF" == "$( cat banco.txt | grep -E '[0-9]{3}[.][0-9]{3}[.][0-9]{3}[-][0-9]{2}' | cut -d ':' -f5)" ]; then
				read -p "Data De Nascimento: " Data
					if [ "$Data" == "$( cat banco.txt | grep -E '[0-9]{2}[/][0-9]{2}[/][0-9]{4}' | cut -d ':' -f6)" ]; then
					read -p "IP: " IP
						if [ "$IP" == "$( cat banco.txt | grep -E '[0-9]{1,3}[.][0-9]{1,3}[.][0-9]{1,3}[.][0-9]{1,3}' | cut -d ':' -f7)" ]; then
						read -p "MASCARA: " MASC
							if [ "$MASC" == "$( cat banco.txt | grep -E '[0-9]{1,3}[.][0-9]{1,3}[.][0-9]{1,3}[.][0-9]{1,3}' | cut -d ':' -f8)" ]; then
							echo "Dados 100% corretos"
							else
							echo "Mascara incorreta"
							exit
							fi
						else
						echo "IP incorreto"
						exit
						fi
					else
					echo "Data de Nascimento errada"
					exit
					fi
				else
				echo "CPF incorreto"
				exit
				fi
			else
			echo "RG incorreto"
			exit
			fi
		else
		echo "telefone incorreto" 
		exit
		fi
	else
	echo "email incorreto"
	exit
	fi
else
	echo "nome incorreto"
	exit
fi
