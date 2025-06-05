*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Search Hotel
    [Arguments]    ${location}    ${hotel}    ${room_type}    ${rooms}    ${checkin}    ${checkout}    ${adults}    ${children}
    Select From List By Value    id=location    ${location}
    Select From List By Value    id=hotels    ${hotel}
    Select From List By Value    id=room_type    ${room_type}
    Select From List By Value    id=room_nos    ${rooms}
    Clear Element Text    id=datepick_in
    Input Text    id=datepick_in    ${checkin}
    Clear Element Text    id=datepick_out
    Input Text    id=datepick_out    ${checkout}
    Select From List By Value    id=adult_room    ${adults}
    Select From List By Value    id=child_room    ${children}
    Click Button    id=Submit
