*** Settings ***
Documentation       Actions that can happen from anywhere within the flow.

Library             SeleniumLibrary
Resource            locators/login_page.resource
Resource            locators/common_components.resource


*** Variables ***
${WEBSITE_URL}      https://ricult-qa1.firebaseapp.com
${LANGUAGE}         English
${BROWSER}          Chrome


*** Keywords ***
I Open the RicultX Website
    [Arguments]    ${website_url}    ${browser}
    Open Browser    ${website_url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    ${LANGUAGE_SELECT_DROPDOWN}

Logout of RicultX
    Wait Until Page Contains Element    ${NAV_USER_DROPDOWN}
    Click Element    ${NAV_USER_DROPDOWN}
    Wait Until Element Is Visible    ${LOGOUT_BUTTON}
    Click Element    ${LOGOUT_BUTTON}
    Wait Until Page Contains Element    ${LANGUAGE_SELECT_MAIN}
