*** Settings ***
Resource         base.robot
Variables        page-object.yaml

*** Keywords ***

Select Number A
    Sleep    3s
    Wait Until Element Is Visible    ${field-angka-1}
    Click Element    ${field-angka-1}

Input Number A - Example :10
    Wait Until Element Is Visible    ${field-angka-1}
    Input Text    ${field-angka-1}    10

Select Formula
    Wait Until Element Is Visible    ${formula-option}
    Click Element    ${formula-option}

Select Formula - Addition
    Wait Until Element Is Visible    ${formula-add}
    Click Element    ${formula-add}

Select Formula - Multiplication
    Wait Until Element Is Visible    ${formula-times}
    Click Element    ${formula-times}

Select Number B
    Wait Until Element Is Visible    ${field-angka-2}
    Click Element    ${field-angka-2}

Input Number B - Example :20
    Wait Until Element Is Visible    ${field-angka-2}
    Input Text    ${field-angka-2}    20

Calculate Result
    Wait Until Element Is Visible    ${button-calculate}
    Click Element    ${button-calculate}    

Check Result Addition
    Page Should Contain Element    ${field-result}
    Page Should Contain Text    30

Check Result Multiplication
    Page Should Contain Element    ${field-result}
    Page Should Contain Text    200