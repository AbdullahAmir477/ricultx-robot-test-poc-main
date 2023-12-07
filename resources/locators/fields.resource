*** Settings ***
Documentation       User can Add the fields

Library             SeleniumLibrary
Library             Collections
Library             Map
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

${element}                  Wait Until Element Is Visible    ${locator}    timeout=10s
${locator}                  xpath:/html[1]/body[1]/div[4]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]


# locators for detail, table, preview fields
${table_field}                          xpath://div[contains(text(),'Table')]
${table_name_field}                 Table
${title_field}                          xpath://h1[contains(text(),'Fields')]
${No_field_Selected}                    xpath://div[contains(text(),'No Field Selected')]
${field_first_row}                      xpath:/html/body/div[1]/div/div/div[1]/div/div[4]/div[1]/table/tbody/tr[1]
${field_info_preview_tab}               xpath://div[contains(text(),'Field Info')]
${crop_cycle_preview_tab}               xpath:/html/body/div[1]/div/div/div[1]/div/div[4]/div[2]/div/div[2]/div[2]/div[1]/div[2]/div[1]
${notes_preview_tab}                    xpath://div[contains(text(),'Notes')]
${SDA_preview_title}                    xpath://div[contains(text(),'System Detected Alerts')]
${field_details_preview_title}          xpath://div[contains(text(),'Field Details')]
${location_detail_preview_title}        xpath://div[contains(text(),'Location Details')]
${view_field_detail_button_preview}     xpath://div[contains(text(),'View Field Detail')]
${delete_field_icon}                    xpath:/html/body/div[1]/div/div/div[1]/div/div[4]/div[1]/table/tbody/tr[1]/td[8]/div/div/div/div[2]/div
${title_field_detail_page}              xpath:/html/body/div[1]/div/div/div[1]/div/div[1]/div
${crop_cycle_field_detail_page}         xpath:/html/body/div[1]/div/div/div[1]/div/div[2]/div/div/div/div[2]/div/div[2]/div/div[1]/div[2]/div[1]



#*** Keywords ***
## I Open the Home Dashboard Screen
##    Click Element    ${Ricult_Home_Icon}
## I Open the Portfolio Side Bar
##    Click Element    ${Portfolio_Side_Bar}
#
#I Open the Fields Page Screen
#    I am on the Home Page
#    Click Element    ${Side_Bar}
#I am on the Home Page
#    Wait Until Keyword Succeeds    8 sec    2 sec    Correct Admin User Name and Role is Shown
#Correct Admin User Name and Role is Shown
#    Element Text Should Be    ${NAV_USER_FULL_NAME}    ${ADMIN_FULL_NAME}
#    Element Text Should Be    ${NAV_USER_ROLE}    ${ADMIN_ROLE}
#
#I Open the Fields Screen
#    Click Element    ${Open_Fields_Screen}
#I Click on Add a Field button
#    Wait Until Element Contains    ${Add_Field_Button_Path}    Add a Field
#    Click Element    ${Add_Field_Button}
#I Click on Draw
#    Click Element    ${Draw_a_Field}
#    Sleep    5s
#    Click Element    ${Add_Draw_Point}
#    Sleep    5s
#
## I Automate the Map    ${Add_Draw_Point}
## I Automate the Map
##    ${element} =    Wait Until Element Is Visible    xpath://div[contains(text(),'Add a point')]
##    Click Element    ${element}
##    #Wait Until Element Is Visible
##    [Arguments]    ${locator}
##    ${element} =    Wait Until Element Is Visible    ${locator} timeout=10s
##    [Return]    ${element}
#
#I Select a Farmer
#    Click Element    ${Select_a_Farmer}
#I Enter the Village
#    Wait Until Page Contains Element    ${Village_Input_Path}
#    Press Keys    ${Village_Input_Path}    ${Village_Input}
#I Click on the Submit button
#    Click Element    ${Submit Button}



