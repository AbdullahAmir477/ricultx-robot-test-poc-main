*** Settings ***
Documentation       User can Open the Map

Library             SeleniumLibrary
Resource            ../locators/maps_locators.resource


*** Keywords ***

I Open the Home Dashboard Screen
    Click Element    ${Ricult_Home_Icon}

I Open the Portfolio Side Bar
    Click Element    ${Portfolio_side_bar}

I Click on the Map
    Click Element    ${Map_button}
    Sleep    3s

I Click on the Current Live Navigation button
    Click Element    ${Current_Location_button}
    Sleep    3s
    Click Element    ${Zoom_In_button}
    Click Element    ${Zoom_In_button}
    Click Element    ${Zoom_Out_button}

I Open the Map Setting
    Click Element    ${Map_Setting_button}
    Wait Until Page Contains Element    ${Default_Math_Type_button}
    
I Select the Satellite Map Type and Select the Map Overlay
    Click Element    ${Satellite_Map_Type_button}
    Click Element    ${NDVI_Pixels_button}
    Click Element    ${By_Area_Count_Mode_button}
    
I Select the NDVI Average
    Click Element    ${NDVI_Average_button}
    
I Select the Crop Type
    Click Element    ${Crop_Type_button}
    
I Select the Growth Stage and Default Map Type and also select the count mode in "number"
    Click Element    ${Growth_Stage_button}
    Click Element    ${Default_Math_Type_button}
    Click Element    ${By_Number_Count_Mode_button}
    
I Click on the Close button
    Click Element    ${Close_Map_Setting_button}
    
I Entered the Farm Id in search bar
    Click Element    ${Location_Search_field}
    Press Keys       ${Location_Search_field}       215632
    Sleep    3s
    Click Element    ${Click_Farm_ID}
    Click Element    ${Click_Farm}
     
 
