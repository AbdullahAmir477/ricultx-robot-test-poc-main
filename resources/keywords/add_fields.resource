*** Settings ***
Documentation       User can Add the fields

Library             SeleniumLibrary
Library             Collections
Library             Map
Resource            ../common.resource
Resource            ../locators/login_page.resource
Resource            ../locators/common_components.resource
Resource            ../locators/fields.resource

*** Keywords ***
# I Open the Home Dashboard Screen
#    Click Element    ${Ricult_Home_Icon}
# I Open the Portfolio Side Bar
#    Click Element    ${Portfolio_Side_Bar}

I Open the Side bar for Fields Page Screen
    I am on the Home Page
    Click Element    ${Side_Bar}
I am on the Home Page
    Wait Until Keyword Succeeds    8 sec    2 sec    Correct Admin User Name and Role is Shown
Correct Admin User Name and Role is Shown
    Element Text Should Be    ${NAV_USER_FULL_NAME}    ${ADMIN_FULL_NAME}
    Element Text Should Be    ${NAV_USER_ROLE}    ${ADMIN_ROLE}

I Open the Fields Screen
    Click Element    ${Open_Fields_Screen}
I Click on Add a Field button
    Wait Until Element Contains    ${Add_Field_Button_Path}    Add a Field
    Click Element    ${Add_Field_Button}
I Click on Draw
    Click Element    ${Draw_a_Field}
    Sleep    5s
    Click Element    ${Add_Draw_Point}
    Sleep    5s

# I Automate the Map    ${Add_Draw_Point}
# I Automate the Map
#    ${element} =    Wait Until Element Is Visible    xpath://div[contains(text(),'Add a point')]
#    Click Element    ${element}
#    #Wait Until Element Is Visible
#    [Arguments]    ${locator}
#    ${element} =    Wait Until Element Is Visible    ${locator} timeout=10s
#    [Return]    ${element}

I Select a Farmer
    Click Element    ${Select_a_Farmer}
I Enter the Village
    Wait Until Page Contains Element    ${Village_Input_Path}
    Press Keys    ${Village_Input_Path}    ${Village_Input}
I Click on the Submit button
    Click Element    ${Submit Button}