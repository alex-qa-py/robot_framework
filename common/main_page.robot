*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${MAIN PAGE}  http://localhost/opencart/
${BROWSER}  chrome
${SEARCH FIELD}  name:search
${SEARCH BUTTON}  class:input-group-btn
${PRODUCT TITLE}  xpath: //h4/a[text() = "iMac"]
${ADD TO CART BUTTON}  xpath: //span[text()='Add to Cart']
${CART BUTTON TEXT}  xpath: //span[contains(text()," 1 item(s)")]
${CART BUTTON}  id:cart
${SUCCEESS ADD}  xpath: //div[text()=' Success: You have added ']
${REMOVE BUTTON}  css: [title='Remove']
${EMPTY CARD TEXT}  xpath: //span[contains(text()," 0 item(s)")]
${MY ACCOUNT DROPDOWN}  css: [title='My Account']
${REGISTER}  xpath: //a[text()='Register']
${LOGIN}  xpath: //a[text()='Login']
${LOGOUT}  xpath: //a[text()='Logout']
${ACCOUNT LOGOUT HEADER}  xpath: //h1[text()='Account Logout']

*** Keywords ***
Open Browser To Main Page
    Open Browser  ${MAIN PAGE}  ${BROWSER}

Add Request To Search Field  [Arguments]  ${SEARCH ITEM}
    Input Text  ${SEARCH FIELD}  ${SEARCH ITEM}

Click Search Button
    Click Element  ${SEARCH BUTTON}

Check Search Result
    Wait Until Element Is Visible  ${PRODUCT TITLE}

Click Add To Cart
    Click Element  ${ADD TO CART BUTTON}

Check Cart
    Wait Until Element Is Visible  ${CART BUTTON TEXT}

Check Add Item to Cart
    Wait Until Element Is Visible  ${SUCCEESS ADD}

Open Cart
    Click Element  ${CART BUTTON}

Click Remove Button
    Click Element  ${REMOVE BUTTON}

Empty Card
    Wait Until Element Is Visible  ${EMPTY CARD TEXT}

Click My Account Dropdown
    Click Element  ${MY ACCOUNT DROPDOWN}

Click Register
    Click Element  ${REGISTER}

Click Login
    Click Element  ${LOGIN}

Click Logout
    Click Element  ${LOGOUT}

Check Account Logout
    Wait Until Element Is Visible  ${ACCOUNT LOGOUT HEADER}
