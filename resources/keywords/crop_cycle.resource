*** Settings ***
Documentation       User can Add and Edit or Delete the Farmers.

Library             SeleniumLibrary
Resource            ../common.resource
Resource            ../locators/login_page.resource
Resource            ../locators/common_components.resource
Resource            ../locators/crop_cycle_page.resource


*** Keywords ***
I Open the Home Dashboard Screen
    Click Element    ${Ricult_Home_Icon}

I Open the Portfolio Side Bar
    Click Element    ${Portfolio_Side_bar}

I Open the Crop Cycle Page Screen
    Click Element    ${Crop_Cycle}

I Click on Add a Crop Cycle button
    Wait Until Element Contains    ${Add_Crop_Cycle_Button_Path}    Add a Crop Cycle
    Click Element    ${Add_Crop_Cycle_Button}

I Select the Crop Type
    Wait Until Element Contains    ${Crop_Type_Path}    Select Crop Type
    Click Element    ${Crop_Type_Dropdown}
    Wait Until Element Contains    ${Crop_Type_Select}    Cabbage
    Click Element    ${Crop_Type_Select}

I Select Crop Variant
    Click Element    ${Crop_Variant_Dropdown}
    Wait Until Element Contains    ${Crop_Variant_Select}    crop_types_data.cb 911
    Click Element    ${Crop_Variant_Select}

I Select Plant Type
    Click Element    ${Plant_Type_Dropdown}
    Wait Until Element Contains    ${Plant_Type_Select}    Ratoon 1
    Click Element    ${Plant_Type_Select}

I Enter the Area
    Wait Until Page Contains Element    ${Enter_Area_Path}
    Press Keys    ${Enter_Area_Path}    ${Enter_Area}

I Choose the Sowing Date
    Click Element    ${Click_Sowing_Date}
    Wait Until Element Is Visible    ${Select_Sowing_Date}    timeout=2s
    Click Element    ${Select_Sowing_Date}

I Select the Season
    Click Element    ${Season_Dropdown}
    Wait Until Element Contains    ${Select_Season}    2022-2023
    Click Element    ${Select_Season}

I Select the Contract Type
    Click Element    ${Contract_Type_Dropdown}
    Wait Until Element Contains    ${Select_Contract_Type}    Area Contract
    Click Element    ${Select_Contract_Type}

I Click on Add a CropCycle
    Click Element    ${Add_CropCycle}
