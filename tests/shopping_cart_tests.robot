*** Settings ***
Test Setup  Open Browser To Main Page
Test Teardown  Close Browser
Resource  ../common/main_page.robot

*** Variables ***
${SEARCH ITEM}  iMac

*** Test Cases ***
Add Item To Cart
    Add Request To Search Field  ${SEARCH ITEM}
    Click Search Button
    Check Search Result
    Click Add To Cart
    Check Cart

Delete Item From Cart
    Add Request To Search Field  ${SEARCH ITEM}
    Click Search Button
    Click Add To Cart
    Check Cart
    Check Add Item to Cart
    Open Cart
    Click Remove Button
    Empty Card