*** Settings ***
Resource            ../pageObject/keywords-login.robot
Resource            ../pageObject/keywords-main.robot

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
Begin Calculation
    Select Number A
    Input Number A - Example :10
    Select Formula
    Select Formula - Addition
    Select Number B
    Input Number B - Example :20
    Calculate Result
    Check Result Addition
