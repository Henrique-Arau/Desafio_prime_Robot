*** Settings ***
Documentation     Teste para calcular o ano de nascimento e verificar a mensagem
Library           DateTime

*** Variables ***
${CURRENT_YEAR} 
${DateTime.Now.Year}        

*** Test Cases ***
Cenario 01: Calculo de Ano De nascimento
    Calcular Ano De Nascimento     30
    Calcular Ano De Nascimento     25
    
    

*** Keywords ***
Calcular Ano De Nascimento
    [Arguments]    ${idade}
    ${ano_nascimento}=    Evaluate    ${CURRENT_YEAR} - ${idade}
    Run Keyword If    ${ano_nascimento} < 2000   Log   Você nasceu no século passado.
    Log     Seu ano de nascimento é:${ano_nascimento}