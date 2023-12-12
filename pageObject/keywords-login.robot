*** Settings ***
Resource         base.robot
Variables        page-object.yaml

*** Keywords ***
Input Username
    [Arguments]           ${username}
    Wait Until Element Is Visible    ${input-username}
    Input Text            ${input-username}       ${username}

Input Password
    [Arguments]           ${password}
    Wait Until Element Is Visible    ${input-password}
    Input Text            ${input-password}       ${password}

Click Button Login
    Click Element         ${button-login}

Check Homepage
    Wait Until Element Is Visible    ${field-angka-1}
    Page Should Contain Element      ${field-angka-1}

Input Invalid Username
    [Arguments]            ${invalid-username}
    Wait Until Element Is Visible    ${input-username}
    Input Text             ${input-username}    ${invalid-username}

Input Invalid Password
    [Arguments]            ${invalid-password}
    Wait Until Element Is Visible    ${input-password}
    Input Text              ${input-password}    ${invalid-password}

Failed Login
    Wait Until Element Is Visible    ${header-simpleapp}
    Page Should Contain Element    ${header-simpleapp}