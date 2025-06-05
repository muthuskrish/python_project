*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Select Hotel
    Wait Until Element Is Visible    id=radiobutton_0    timeout=5s
    Click Element    id=radiobutton_0
    Click Button    id=continue
