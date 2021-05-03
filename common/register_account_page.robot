*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${FIRST NAME INPUT}  id:input-firstname
${LAST NAME INPUT}  id:input-lastname
${EMAIL INPUT}  id:input-email
${TELEPHONE INPUT}  id:input-telephone
${PASSWORD INPUT}  id:input-password
${PASSWORD CONFIRM INPUT}  id:input-confirm
${RADIOBUTTON SUBSCRIBE}  css: input[name='newsletter'][value='1']
${AGREE CHECKBOX}  css:[name='agree']
${CONTINUE BUTTON}  css:[value='Continue']
${ACCOUNT CREATED HEADER}  xpath: //h1[text()='Your Account Has Been Created!']

*** Keywords ***
Add First Name  [Arguments]  ${FIRST NAME}
    Input Text  ${FIRST NAME INPUT}  ${FIRST NAME}

Add Last Name  [Arguments]  ${LAST NAME}
    Input Text  ${LAST NAME INPUT}  ${LAST NAME}

Add Email  [Arguments]  ${EMAIL}
    Input Text  ${EMAIL INPUT}  ${EMAIL}

Add Telephone  [Arguments]  ${TELEPHONE}
       Input Text  ${TELEPHONE INPUT}  ${TELEPHONE}

Add Password  [Arguments]  ${PASSWORD}
        Input Text  ${PASSWORD INPUT}  ${PASSWORD}

Confirm Password  [Arguments]  ${PASSWORD}
        Input Text  ${PASSWORD CONFIRM INPUT}  ${PASSWORD}

Click Subscribe
        Click Element  ${RADIOBUTTON SUBSCRIBE}

Click Agree Checkbox
        Click Element  ${AGREE CHECKBOX}

Click Continue Button
        Click Element  ${CONTINUE BUTTON}

Check Account Registration
        Wait Until Element Is Visible  ${ACCOUNT CREATED HEADER}