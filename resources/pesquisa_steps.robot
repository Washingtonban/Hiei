*** Settings ***

Documentation   Essa documento contem os passo-a-passos do cenário de teste filtros
Resource        ../resources/config/variaveis.robot

Library         SeleniumLibrary

*** Keywords ***

#### Setup e Teardown
Abrir navegado logado
    Open Browser        ${URL}              ${BROWSER}  options=${OPTIONS}
    Set Selenium Implicit Wait              10
    Maximize Browser Window

Fechar navegador
    Close Browser

Pesquisar "${expect_text}"
    Input Text  xpath://*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input      ${expect_text}
