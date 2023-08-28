*** Settings ***
Documentation       User actions for the login flow.

Library             SeleniumLibrary
Resource            ../common.resource
Resource            ../locators/login_page.resource
Resource            ../locators/common_components.resource
Resource            ../locators/farmers.resource



*** Variables ***

${VALID_EMAIL_LOGIN_USERNAME}       abdullah.amir@ricult.com
${VALID_EMAIL_LOGIN_PASSWORD}       Hello@12345
${ADMIN_FULL_NAME}                  Abdullah QA
${ADMIN_ROLE}                       Main Admin


*** Keywords ***

I Select the English Language
    Click Element    ${LANGUAGE_SELECT_DROPDOWN}
    Click Element    ${LANGUAGE_SELECT_ENGLISH}
    Click Element    ${LANGUAGE_SELECT_NEXT}

I Choose to Login by Email
    Wait Until Page Contains Element    ${LOGIN_OPTIONS_MAIN}
    Click Element    ${LOGIN_SELECT_EMAIL_OPTION}

I Enter Valid Admin Email
    Wait Until Element Contains    ${EMAIL_LOGIN_USERNAME_INPUT_LABEL}    Email
    Click Element    ${EMAIL_LOGIN_USERNAME_TEXT_FIELD}
    Press Keys    ${EMAIL_LOGIN_USERNAME_INPUT}    ${VALID_EMAIL_LOGIN_USERNAME}
    Wait Until Element Is Enabled    ${EMAIL_LOGIN_USERNAME_CONTINUE}
    Click Element    ${EMAIL_LOGIN_USERNAME_CONTINUE}

I Enter Valid Admin Password
    Wait Until Element Contains    ${EMAIL_LOGIN_PASSWORD_INPUT_LABEL}    Password
    Click Element    ${EMAIL_LOGIN_PASSWORD_TEXT_FIELD}
    Press Keys    ${EMAIL_LOGIN_PASSWORD_INPUT}    ${VALID_EMAIL_LOGIN_PASSWORD}
    Wait Until Element Is Enabled    ${EMAIL_LOGIN_PASSWORD_CONTINUE}
    Click Element    ${EMAIL_LOGIN_PASSWORD_CONTINUE}

I Should See the Name of the Admin User
    Wait Until Keyword Succeeds    4 sec    2 sec    Correct Admin User Name and Role is Shown


Correct Admin User Name and Role is Shown
    Element Text Should Be    ${NAV_USER_FULL_NAME}    ${ADMIN_FULL_NAME}
    Element Text Should Be    ${NAV_USER_ROLE}    ${ADMIN_ROLE}
