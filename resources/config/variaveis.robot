*** Variables ***

#### Filtros
#### Setup de Browser
${BROWSER}      chrome
#### Opção para rodar o chrome headless no linux CI
${OPTIONS}      add_argument("--disable-dev-shm-usage"); add_argument("--headless"); add_argument("--no-sandbox")
${URL}          https://www.google.com/