*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Test Dynamic Loading
    Open Browser    https://the-internet.herokuapp.com/dynamic_loading/1    Chrome
    Click Button    xpath=//button[contains(text(),'Start')]
    Wait Until Element Is Visible    id=loading    30s    # Adjust timeout as needed
    Wait Until Element Is Not Visible    id=loading    30s
    Page Should Contain Element    xpath=//h4[contains(text(),'Hello World!')]
    [Teardown]    Close Browser
