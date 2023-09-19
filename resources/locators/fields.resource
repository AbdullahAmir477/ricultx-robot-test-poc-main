*** Settings ***
Documentation       User can Add the fields

Library             SeleniumLibrary
Library             Collections
Library             lib/Map.py
Resource            ../common.resource
Resource            ../locators/login_page.resource
Resource            ../locators/common_components.resource


*** Variables ***
${Side_Bar}                 xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[1]/div[3]/div/div
${Open_Fields_Screen}       xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[2]/div[5]/div
${Add_Field_Button}         xpath:/html/body/div[1]/div/div/div[1]/div/div[1]/div
${Add_Field_Button_Path}    xpath:/html/body/div[1]/div/div/div[1]/div/div[1]/div/div/div[2]
${Draw_a_Field}             xpath:/html/body/div[1]/div/div/div[1]/div/div[2]/div[4]/div/div[4]
${Add_Draw_Point}           xpath://div[contains(text(),'Add a point')]
${Select_a_Farmer}          xpath://div[contains(text(),'Select a farmer')]
${Village_Input_Path}       xpath:/html/body/div[1]/div/div/div[1]/div/div[3]/div/div/div[1]/div[11]/div/div[2]/div[2]/input
${Village_Input}            Lala Moosa
${Submit Button}            xpath://div[contains(text(),'Submit')]

${Ricult_Home_Icon}         xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[1]/div[1]/div/svg/path[1]

${element} =    Wait Until Element Is Visible    ${locator}     timeout=10s
${locator}                  xpath:/html[1]/body[1]/div[4]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]

*** Keywords ***
# I Open the Home Dashboard Screen
#    Click Element    ${Ricult_Home_Icon}
# I Open the Portfolio Side Bar
#    Click Element    ${Portfolio_Side_Bar}

I Open the Fields Page Screen
    Click Element    ${Side_Bar}

I Open the Fields Screen
    Click Element    ${Open_Fields_Screen}

I Click on Add a Field button
    Wait Until Element Contains    ${Add_Field_Button_Path}    Add a Field
    Click Element    ${Add_Field_Button}

I Click on Draw
    Click Element    ${Draw_a_Field}
    Sleep    5s
    Click Element    ${Add_Draw_Point}
    Sleep    3s


#I Automate the Map    ${Add_Draw_Point}
#I Automate the Map
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
