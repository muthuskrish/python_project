*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Login To Application
    [Arguments]    ${username}    ${password}
    Input Text    id=username    ${username}
    Input Text    id=password    ${password}
    Click Button    id=login
    #Input Text    id=password    ${password}

