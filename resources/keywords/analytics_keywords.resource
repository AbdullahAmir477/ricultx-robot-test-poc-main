*** Settings ***
Documentation       User can Open the Analytics Page

Library             SeleniumLibrary
Resource            ../locators/analytics_page.resource


*** Keywords ***

I Open the Home Dashboard Screen
    Click Element    ${Ricult_Home_Icon}

I Open the Portfolio Side Bar
    Click Element    ${Analytics_side_bar}