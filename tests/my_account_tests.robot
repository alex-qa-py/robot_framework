*** Settings ***
Test Setup  Open Browser To Main Page
Test Teardown  Close Browser
Resource  ../common/main_page.robot
Resource  ../common/register_account_page.robot
Resource  ../common/login_page.robot

*** Variables ***
${FIRST NAME}  Alex
${LAST NAME}  K
${EMAIL}  ak@mail.ru
${TELEPHONE}  2334545
${PASSWORD}  12345

*** Test Cases ***
Register New Account
    Click My Account Dropdown
    Click Register
    Add First Name  ${FIRST NAME}
    Add Last Name  ${LAST NAME}
    Add Email  ${EMAIL}
    Add Telephone  ${TELEPHONE}
    Add Password  ${PASSWORD}
    Confirm Password  ${PASSWORD}
    Click Subscribe
    Click Agree Checkbox
    Click Continue Button
    Check Account Registration

Login
    Click My Account Dropdown
    Click Login
    Add Email  ${EMAIL}
    Add Password  ${PASSWORD}
    Click Login Button
    Check Success Login

Logout
    Click My Account Dropdown
    Click Login
    Add Email  ${EMAIL}
    Add Password  ${PASSWORD}
    Click Login Button
    Click My Account Dropdown
    Click Logout
    Check Account Logout

