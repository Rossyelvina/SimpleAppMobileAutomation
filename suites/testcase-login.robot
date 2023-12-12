
*** Settings ***
Resource            ../pageObject/keywords-login.robot

*** Variables ***
${username}            admin
${password}            admin


*** Test Cases ***
Valid login
    Open Simple App Application
    keywords-login.Input Username    ${username}
    keywords-login.Input Password    ${password}
    Click Button Login
    Check Homepage
