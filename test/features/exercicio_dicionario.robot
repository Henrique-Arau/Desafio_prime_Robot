*** Settings ***
Documentation    Demonstração de tipos de variaveis usando Dicionario

*** Variables ***
&{DICIONARIO}    nome=Cliente 01  idade=30  rua=Rua Castro  numero=15  
...              cep=78956563  bairro=lunacyte  cidade=Novo-Gama
...              estado=GO

*** Test Cases ***
Cenario 01: variavel DICIONARIO
    Logar variavel Dicionario No Console

*** Keywords ***

Logar variavel Dicionario No Console
    Log To Console    .
    Log To Console    -----------------------
    Log To Console    Nome:${DICIONARIO.nome}
    Log To Console    Idade:${DICIONARIO.idade}
    Log To Console    Rua:${DICIONARIO.rua}
    Log To Console    Numero:${DICIONARIO.numero}
    Log To Console    Cep:${DICIONARIO.cep}
    Log To Console    Bairro:${DICIONARIO.bairro}
    Log To Console    Cidade:${DICIONARIO.cidade}
    Log To Console    Estado:${DICIONARIO.estado}
    Log To Console    -----------------------