*** Settings ***
Documentation       User can Open the Crop Finder

Library             SeleniumLibrary
Resource            ../locators/crop_finder_page.resource


*** Keywords ***

I Open the Home Dashboard Screen
    Click Element    ${Ricult_Home_Icon}

I Open the Portfolio Side Bar
    Click Element    ${CropFinder_side_bar}