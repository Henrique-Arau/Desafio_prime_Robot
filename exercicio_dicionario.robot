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
    Log To Console    Nome do cliente:${DICIONARIO.nome}
    Log To Console    Idade do cliente:${DICIONARIO.idade}
    Log To Console    Rua do cliente:${DICIONARIO.rua}
    Log To Console    Numero do cliente:${DICIONARIO.numero}
    Log To Console    Cep do cliente:${DICIONARIO.cep}
    Log To Console    Bairro do cliente:${DICIONARIO.bairro}
    Log To Console    Cidade do cliente:${DICIONARIO.cidade}
    Log To Console    Estado do cliente:${DICIONARIO.estado}
    Log To Console    -----------------------