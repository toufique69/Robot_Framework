*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://the-internet.herokuapp.com/checkboxes

*** Test Cases ***
Checkbox Interaction
    Open Browser    ${URL}    Chrome
    # Check the first checkbox if it's not already checked
    ${isChecked}=    Run Keyword And Return Status    Checkbox Should Be Selected    xpath=(//input[@type='checkbox'])[1]
    Run Keyword If    not ${isChecked}    Select Checkbox    xpath=(//input[@type='checkbox'])[1]
    # Uncheck the second checkbox if it's checked
    ${isChecked}=    Run Keyword And Return Status    Checkbox Should Be Selected    xpath=(//input[@type='checkbox'])[2]
    Run Keyword If    ${isChecked}    Unselect Checkbox    xpath=(//input[@type='checkbox'])[2]
    [Teardown]    Close Browser
