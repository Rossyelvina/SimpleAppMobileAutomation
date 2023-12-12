
*** Settings ***
Resource            ../pageObject/keywords-login.robot

*** Variables ***
${username}            admin
${password}            admin
${invalid-username}    wronguser
${invalid-password}    wrongpass


*** Test Cases ***
Invalid login
    Open Simple App Application
    keywords-login.Input Invalid Username    ${invalid-username}
    keywords-login.Input Invalid Password    ${invalid-password}
    Click Button Login
    Failed Login
