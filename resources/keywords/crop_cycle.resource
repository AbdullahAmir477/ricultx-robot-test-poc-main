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
    Sleep    3s

I Click on Add a Crop Cycle button
    #Wait Until Element Is Visible    ${Add_Crop_Cycle_Button_Path}      timeout=3s
    #Wait Until Element Contains    ${Add_Crop_Cycle_Button_Path}    Add a Crop Cycle
    #Sleep    3s
    Click Element    ${Add_Crop_Cycle_Button}
    Sleep    5s

I Select the Field
    Sleep    3s
    #Wait Until Page Contains Element    ${Select_a_field}       Select a field
    Click Element    ${Select_a_field_button}
    Sleep    2s
    Click Button    ${sear}
    Press Keys       ${sear}        292919
    Sleep    4s
    Click Element    ${Select_a_field}
    Sleep    3s
    Click Element    ${Confirm_button}

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


# Harvest Crop Cycle
I Click on the Status
    Click Element    ${Status}
    Click Element    ${click_active_crop_cycle}

I Click on the Harvest Crop Cycle
    Sleep    2s
    Scroll Element Into View    ${harvest_crop_cycle}
    Click Element    ${harvest_crop_cycle}
    Sleep    3s

I Enter the Harvest Information
    Sleep    2s
    Click Element    ${Actual_Yield_Input}
    Click Element    ${Actual_Harvest_Date}
    Click Element    ${Confirm_Harvest_Date}
    Click Element    ${Select_Radio_Button}
    Click Element    ${Model_Confirm_Button}


