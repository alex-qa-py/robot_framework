*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${EMAIL INPUT}  id:input-email
${PASSWORD INPUT}  id:input-password
${LOGIN BUTTON}  css: input[value='Login']
${SUCCESS LOGIN}  id:content

*** Keywords ***
Add Email Login Page  [Arguments]  ${LOGIN}
    Input Text  ${EMAIL INPUT}  ${LOGIN}

Add Password Login Page  [Arguments]  ${PASSWORD}
    Input Text  ${PASSWORD INPUT}  ${PASSWORD}

Click Login Button
    Click Element  ${LOGIN BUTTON}

Check Success login
    Wait Until Element Is Visible  ${SUCCESS LOGIN}
