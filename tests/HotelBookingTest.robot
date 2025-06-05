*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/LoginPage.robot
Resource   ../resources/SearchHotelPage.robot
Resource   ../resources/SelectHotelPage.robot
Resource   ../resources/BookHotelPage.robot
Resource   ../variables/TestData.robot

Suite Setup    Open Browser    ${URL}    chrome
Suite Teardown    Close Browser

*** Test Cases ***
Complete Hotel Booking Test
    Login To Application    ${USERNAME}    ${PASSWORD}
    Search Hotel    ${LOCATION}    ${HOTEL}    ${ROOM_TYPE}    ${ROOMS}    ${CHECKIN}    ${CHECKOUT}    ${ADULTS}    ${CHILDREN}
    Select Hotel
    Book Hotel
