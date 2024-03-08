*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Test Dropdown Menu
    Open Browser    https://the-internet.herokuapp.com/dropdown    Chrome
    Wait Until Element Is Visible    id=dropdown    30s
    ${options}=    Get List Items    id=dropdown
    Log    Options available: ${options}
    Select From List By Value    id=dropdown    1
    ${selectedOption}=    Get Selected List Label    id=dropdown
    Log    Selected option: ${selectedOption}
    Should Be Equal As Strings    ${selectedOption}    Option 1
    Select From List By Value    id=dropdown    2
    ${selectedOption}=    Get Selected List Label    id=dropdown
    Log    Selected option: ${selectedOption}
    Should Be Equal As Strings    ${selectedOption}    Option 2
    Capture Page Screenshot
    [Teardown]    Close Browser
