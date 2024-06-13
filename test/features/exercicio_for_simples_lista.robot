*** Settings ***
Library    Collections

*** Variables ***
@{FRUTAS}    morango  banana  maçã  uva  abacaxi

*** Test Cases ***
Cenario 01: For Simples Em Lista
    Exemplo de FOR Simples em Lista

*** Keywords ***
Exemplo de FOR Simples em Lista
    FOR    ${fruta}    IN    @{FRUTAS}
    Log To Console   A fruta é: ${fruta}
    
    END
