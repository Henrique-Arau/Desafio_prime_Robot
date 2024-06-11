*** Settings ***
Documentation    Teste de um dicionario contendo as credenciais de acesso
...              usuario e senha, teste que altere o valor da senha e exiba 
...              o dicionario criado no setup com a senha alterada e na finalização
...              do caso de teste Teardown retorne o campo senha para o valor inicial.
Library    Collections

*** Variables ***
&{CREDENCIAIS}      usuario=admin,  senha=:password123
&{SENHA_INICIAL}    senha=password123
&{NOVA_SENHA}       nova_senha=prime258

*** Test Cases ***
Teste De Alteração De Senha
    [Setup]    Alterar Senha
    [Teardown]    Restaurar Senha Inicial
    Log    Dicionário durante o teste: ${CREDENCIAIS}

*** Keywords ***
Alterar Senha
    Set To Dictionary    ${CREDENCIAIS}    senha    ${NOVA_SENHA}
    Log    Dicionário no Setup com senha alterada: ${CREDENCIAIS}

Restaurar Senha Inicial
    Set To Dictionary    ${CREDENCIAIS}    senha    ${SENHA_INICIAL}
    Log    Dicionário no Teardown com senha restaurada: ${CREDENCIAIS}