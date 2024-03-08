*** Settings ***
Documentation     Simple login test for The Internet Herokuapp
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${URL}            https://the-internet.herokuapp.com/login
${USERNAME}       tomsmith
${PASSWORD}       SuperSecretPassword!

*** Test Cases ***
Valid Login
    Open Browser    ${URL}    ${BROWSER}
    Input Text    id=username    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button    css=button.radius
    Page Should Contain    You logged into a secure area!
    [Teardown]    Close Browser
