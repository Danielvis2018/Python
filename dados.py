#!/usr/bin/python
# -*- coding: utf-8 -*-
#Criador:Daniel De Jesus Oliveira TT3
import re

#validar nome
print("Exemplo: Daniel")
nome = raw_input("Digite seu Nome: ")
if re.match("^[aA-zZ]+((\s[aA-zZ]+)+)?$", nome):
	print("nome correto!")
else:
	print("nome incorreto!")

#validar email
print("Exemplo: daniel@hotmail.com|.br ou daniel@hotmail.com")
email = raw_input("Digite seu email: ")
if re.match('^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.com|\.br)|(\.com\.br)' , email):
	print("email correto!")
else:
	print("email incorreto!")

#validar telefone
print("Exemplo: (11) 4608-5519 ou (11) 99259-0870")
telefone = raw_input("Digite seu telefone: ")
if re.match('^\(?[0-9]{2}\)?[" "][0-9]{4,5}\-[0-9]{4}$', telefone):
	print("telefone correto!")
else:
	print("telefone incorreto!")

#validador de rg
print("Exemplo: 33.177.545-9")
rg = raw_input("Digite seu rg: ")
if re.match('^[0-9]{2}\.?[0-9]{3}\.?[0-9]{3}\-?[0-9]{1}$', rg):
	print("rg correto!")
else:
	print("rg incorreto!")

#validador de cpf
print("Exemplo: 508.999.528-10")
cpf = raw_input("Digite seu cpf: ")
if re.match('^[0-9]{3}\.?[0-9]{3}\.?[0-9]{3}\-?[0-9]{2}$', cpf):
	print("cpf correto!")
else:
	print("cpf incorreto!")

#validar data
print("Exemplo: dd/mm/aaaa")
data = raw_input("Digite sua data de nascimento: ")
if re.match('^((0[1-9]|[12]\d)\/(0[1-9]|1[0-2])|30\/(0[13-9]|1[0-2])|31\/(0[13578]|1[02]))\/\d{4}$', data):
	print("Data correta!")
else:
	print("Data incorreta!")


#validar ip
print("Exemplo: 192.168.0.1")
ip = raw_input("Digite seu ip: ")
if re.match("^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[1-9][1-9]?)$", ip):
	print("ip correto!")
else:
	print("ip incorreto!")

#validar mascara de rede
print("Exemplo: 255.255.255.0")
masc = raw_input("Digite a Mascara De Rede: ")
if re.match('^\d{1,3}[.]\d{1,3}[.]\d{1,3}[.]\d{1,3}$', masc):
	print("mascara de rede correta!")
	print("Dados cadastrados com sucesso")
else:
	print("mascara incorreta")

