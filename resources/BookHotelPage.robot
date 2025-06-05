*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Book Hotel
    Input Text    id=first_name    Muthu
    Input Text    id=last_name     Krishnan
    Input Text    id=address       Chennai
    Input Text    id=cc_num        6758491912311222
    Select From List By Value      id=cc_type         VISA
    Select From List By Index      id=cc_exp_month    4
    Select From List By Label      id=cc_exp_year     2029
    Input Text    id=cc_cvv        455
    Click Button   id=book_now
    Sleep    6s
    ${order}=    Get Element Attribute    id=order_no    value
    Log To Console    Booking Order ID : ${order}
