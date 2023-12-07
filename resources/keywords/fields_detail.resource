*** Settings ***
Documentation       User can Add the fields

Library             SeleniumLibrary
Library             Collections
Library             Map
Resource            ../common.resource
Resource            ../locators/login_page.resource
Resource            ../locators/common_components.resource
Resource            ../locators/fields.resource
Resource            ../../resources/keywords/add_fields.resource


*** Keywords ***
I Open the Sidebar
    I am on the Home Page
    Click Element    ${Side_Bar}
    Wait Until Keyword Succeeds    8 sec    2 sec    Correct Admin User Name and Role is Shown
Correct Admin User Name and Role is Shown
    Element Text Should Be    ${NAV_USER_FULL_NAME}    ${ADMIN_FULL_NAME}
    Element Text Should Be    ${NAV_USER_ROLE}    ${ADMIN_ROLE}
I open fields screen
    Click Element    ${Open_Fields_Screen}
I see the Table in fields
    Sleep    3s
    Wait Until Element Is Visible    ${title_field}
    Wait Until Element Is Visible    ${table_field}
    Wait Until Element Is Visible    ${No_field_Selected}
I Click on fields first row
    Click Element    ${field_first_row}
I see the Preview fields
    Wait Until Element Is Visible    ${field_info_preview_tab}
    Wait Until Element Is Visible    ${crop_cycle_preview_tab}
    Wait Until Element Is Visible    ${notes_preview_tab}
    Wait Until Element Is Visible    ${SDA_preview_title}
    Wait Until Element Is Visible    ${field_details_preview_title}
    Wait Until Element Is Visible    ${location_detail_preview_title}
    Scroll Element Into View         ${view_field_detail_button_preview}
    #Sleep    4s
I Click on the Details Fields
    Click Element    ${view_field_detail_button_preview}
    Wait Until Element Contains    ${title_field_detail_page}    Field Details
    Wait Until Element Is Visible    ${field_info_preview_tab}
    Wait Until Element Contains    ${crop_cycle_field_detail_page}    Crop Cycle
    Wait Until Element Is Visible    ${notes_preview_tab}
    Wait Until Element Is Visible    ${SDA_preview_title}
    #Sleep    3s


