#!/bin/bash
Criador: Daniel De Jesus Oliveira

clear


EMAIL(){
	echo "Exemplo: daniel@senai.com ou daniel@senai.com.br"
	read -p "Digite seu email: " email
	echo $email | grep -E '^([a-zA-Z0-9_-.])+@[0-9a-zA-Z.-]+(\.com|\.br)|(\.com\.br)$'
	if [ $? == 0 ]; then
		clear
		echo "Email Correto!"
		sleep 1
		clear
		TEL
	else
		echo "Email Incorreto!"
		echo "Tente Novamente :/ "
		sleep 1
		clear
		EMAIL
	fi
}

TEL(){
	echo "Exemplo : (11) 4608-5519"
	read -p "Digite Seu Telefone: " Tel 
	echo $Tel | grep -E '^[(][0-9]{2}[)][" "][0-9]{4,5}+-[0-9]{4}$'
	if [ $? == 0 ]; then 
		clear
		echo "Telefone Correto!"
		sleep 1
		clear
		RG
	else
		echo "Telefone Incorreto!"
		echo "Tente Novamente :/ "
		sleep 1
		clear
		TEL
	fi
}

RG(){
	echo "Exemplo: 37.628.670-2"
	read -p "Digite seu RG: " rg
	echo $rg | grep -E '^[0-9]{2}[.][0-9]{3}[.][0-9]{3}[-][0-9]{1}$'
	if [ $? == 0 ]; then
		clear
		echo "RG correto!"
		sleep 1
		clear
		CPF
	else
		echo "RG incorreto!"
		echo "Tente Novamente :/"
		sleep 1
		clear
		RG
	fi
}

CPF(){
	echo "Exemplo: 508.999.528-10"
	read -p "Digite seu cpf: " cpf
	echo $cpf | grep -E '^[0-9]{3}[.][0-9]{3}[.][0-9]{3}[-][0-9]{2}$'
	if [ $? == 0 ]; then
		clear
		echo "CPF Correto!"
		sleep 1
		clear
		DATA
	else
		echo "CPF incorreto!"
		echo "Tente Novamente :/"
		sleep 1
		clear
		CPF
	fi
}

DATA(){
	echo "Exemplo: dd/mm/aaaa"
	read -p "Digite a sua Data de Nascimento: " data
	echo $data | grep -E '^[0-3]{1}[0-9]{1}[/][0-1]{1}[0-9]{1}[/][0-9]{4}$'
	if [ $? == 0 ]; then
		clear
		echo "Data correta!"
		sleep 1
		clear
		IP
	else
		echo "Data incorreta!"
		echo "Tente Novamente :/"
		sleep 1
		clear
		DATA
	fi
}

IP(){
	echo "Exemplo: 192.168.0.1"
	read -p "Digite o seu ip: " ip
	echo $ip | grep -E '^[0-9]{1,3}[.][0-9]{1,3}[.][0-9]{1,3}[.][1-9]{1,3}$'
	if [ $? == 0 ]; then
		clear
		echo "Ip correto!"
		sleep 1
		clear
		MASC
	else
		echo "Ip incorreto!"
		echo "Tente Novamente :/"
		sleep 1
		clear
		IP
	fi
}

MASC(){
	echo "Exemplo: 255.255.255.0"
	read -p "Digite sua Mascara de Rede: " masc
	echo $masc | grep -E '^[0-9]{1,3}[.][0-9]{1,3}[.][0-9]{1,3}[.][0-9]{1,3}$'
	if [ $? == 0 ]; then
		clear
		echo "Mascara de Rede correta!"
		echo "Dados Cadastrados Com Sucesso!"
		sleep 1
		clear
	else
		echo "Mascara de Rede incorreta!"
		echo "Tente Novamente :/"
		sleep 1
		clear
		MASC
	fi
echo "$nome:$email:$Tel:$rg:$cpf:$data:$ip:$masc" >> banco.txt 
}
EMAIL
