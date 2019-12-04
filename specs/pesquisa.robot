*** Settings ***

Documentation   Essa cenário de teste tem os casos de logout
Resource        ../resources/pesquisa_steps.robot

# Setup => coisas que devem acontecer antes do teste
# Teardown => coisas que devem acontecer depois do teste
Test Setup      Abrir navegado
Test Teardown   Fechar navegador


*** Test Cases ***

Pesquisar no google
    Pesquisar "Kellen A. Gruimarães"