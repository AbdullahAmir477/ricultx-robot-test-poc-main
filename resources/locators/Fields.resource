*** Settings ***
Documentation       User can Add the fields

Library             SeleniumLibrary
Resource            ../common.resource
Resource            ../locators/login_page.resource
Resource            ../locators/common_components.resource



*** Variables ***

${Side_Bar}                 xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[1]/div[3]/div/div
${Open_Fields_Screen}       xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[2]/div[5]/div
${Add_Field_Button}         xpath:/html/body/div[1]/div/div/div[1]/div/div[1]/div
${Add_Field_Button_Path}    xpath:/html/body/div[1]/div/div/div[1]/div/div[1]/div/div/div[2]
${Draw_a_Field}             xpath:/html/body/div[1]/div/div/div[1]/div/div[2]/div[4]/div/div[4]
${Add_Draw_Point}           xpath:/html/body/div[6]/div/div[2]/div/div/div[2]/div[3]/div[1]


${Ricult_Home_Icon}         xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[1]/div[1]/div/svg/path[1]


*** Keywords ***

#I Open the Home Dashboard Screen
#    Click Element    ${Ricult_Home_Icon}
#I Open the Portfolio Side Bar
#    Click Element    ${Portfolio_Side_Bar}

I Open the Fields Page Screen
    #Sleep    3s
    Click Element    ${Side_Bar}
I Open the Fields Screen
    Click Element    ${Open_Fields_Screen}
I Click on Add a Field button
    Wait Until Element Contains    ${Add_Field_Button_Path}    Add a Field
    Click Element    ${Add_Field_Button}
I Click on Draw
    Click Element    ${Draw_a_Field}
    Click Element    ${Add_Draw_Point}
    




#    # Zoom in
#    Execute JavaScript    mapboxgl.maps[0].zoomIn()
#    # Wait for a moment (add appropriate waiting time)
#    Sleep    2s
#    # Zoom out
#    Execute JavaScript    mapboxgl.maps[0].zoomOut()
#
#
#    # Verify that a marker is present
#    Element Should Be Visible    css:.mapboxgl-marker
#
#    # Verify the text of an element (replace with your locator)
#    Page Should Contain Element    css:.mapboxgl-control
#    Element Text Should Be    css:.mapboxgl-control    Your Expected Text




