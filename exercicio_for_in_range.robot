*** Settings ***
Library    Collections


*** Variables ***
${START}        0
${Numeros}      10
${STEP}         1
${PARES}        0


*** Test Cases ***
Cenario 01: For in range
  Contar Numeros PARES

*** Keywords ***
Contar Numeros PARES
    FOR    ${i}    IN RANGE    ${START}   ${Numeros} + 1    ${STEP}
       IF  ${i} % 2 == 0
           ${PARES}=    Set Variable    ${PARES} + 1
           Log To Console   Numero par: ${i}
       END
    END
    Log To Console    Quantidade de números pares: ${PARES}


    