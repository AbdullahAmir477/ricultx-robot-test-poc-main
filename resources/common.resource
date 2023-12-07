*** Settings ***
Documentation       Actions that can happen from anywhere within the flow.

Library             SeleniumLibrary
#Library             WebDriverFactory
Resource            locators/login_page.resource
Resource            locators/common_components.resource
Resource            keywords/login.resource


*** Variables ***
${WEBSITE_URL}      https://ricult-qa1.firebaseapp.com
${LANGUAGE}         English
${BROWSER}          Chrome


*** Keywords ***
I Open the RicultX Website
    [Arguments]    ${website_url}    ${browser}
    Open Browser    ${website_url}    ${browser}
    # Open Browser    https://ricult-qa1.firebaseapp.com    Chrome
    Maximize Browser Window
    Wait Until Page Contains Element    ${LANGUAGE_SELECT_DROPDOWN}

Logout of RicultX
    Wait Until Page Contains Element    ${NAV_USER_DROPDOWN}
    Click Element    ${NAV_USER_DROPDOWN}
    Wait Until Element Is Visible    ${LOGOUT_BUTTON}
    Click Element    ${LOGOUT_BUTTON}
    Wait Until Page Contains Element    ${LANGUAGE_SELECT_MAIN}

Login as an Admin
    I Open the RicultX Website    ${WEBSITE_URL}    Chrome
    I Select the English Language
    I Choose to Login by Email
    I Enter Valid Admin Email
    I Enter Valid Admin Password
    I Should See the Name of the Admin User

I Open the RicultX Website in Chrome in a Container
    [Documentation]    Opens Chrome using custom options when running tests in
    ...    an environment that doesn't support browser GUI. (e.g.in a container).
    [Arguments]    ${website_url}
    # ${chrome_options}=    Get Chrome Options
    ${chrome_service}=    Get Chrome Driver Service
    # Create Webdriver    Chrome    service=${chrome_service}    options=${chrome_options}
    Create Webdriver    Chrome    service=${chrome_service}
    Go to    ${website_url}
    Maximize Browser Window
    Wait Until Page Contains Element    ${LANGUAGE_SELECT_DROPDOWN}
