*** Settings ***
Documentation       User can Add or Edit or Delete the Crop Cycle

Library             SeleniumLibrary
Resource            ../common.resource
Resource            ../locators/login_page.resource
Resource            ../locators/common_components.resource


*** Variables ***
#    Ricult Home icon
# ${Ricult_Home_Icon}    xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[1]/div[1]/div/svg/path[1]

#    Portfolio icon on Side bar
# ${Portfolio_Side_bar}    xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[1]/div[3]/div/div
${Crop_Cycle}                       xpath://div[contains(text(),'Crop Cycle')]
${Add_Crop_Cycle_Button}            xpath:/html/body/div[1]/div/div/div[1]/div/div[1]/div
${Add_Crop_Cycle_Button_Path}       xpath:/html/body/div[1]/div/div/div[1]/div/div[1]/div/div/div[2]

${Crop_Type_Path}                   xpath:/html/body/div[1]/div/div/div[1]/div/div[2]/div/div/div[1]/div[5]/div[2]/div[3]/div/div
${Crop_Type_Dropdown}               xpath:/html/body/div[1]/div/div/div[1]/div/div[2]/div/div/div[1]/div[5]/div[2]/div[3]/div
${Crop_Type_Select}                 xpath://div[contains(text(),'Cabbage')]
${Crop_Variant_Dropdown}            xpath:/html/body/div[1]/div/div/div[1]/div/div[2]/div/div/div[1]/div[6]/div[2]/div[3]/div
${Crop_Variant_Select}              xpath://div[contains(text(),'crop_types_data.cb 911')]
${Plant_Type_Dropdown}              xpath:/html/body/div[1]/div/div/div[1]/div/div[2]/div/div/div[1]/div[7]/div[2]/div[3]/div
${Plant_Type_Select}                xpath://div[contains(text(),'Ratoon 1')]
${Enter_Area_Path}                  xpath:/html/body/div[1]/div/div/div[1]/div/div[2]/div/div/div[1]/div[8]/div/div[2]/div[2]
${Enter_Area}                       772
${Click_Sowing_Date}                xpath:/html/body/div[1]/div/div/div[1]/div/div[2]/div/div/div[1]/div[9]/div[1]/div/div[2]/div[2]
${Select_Sowing_Date}               xpath://div[contains(text(),'Confirm')]

${Season_Dropdown}                  xpath:/html/body/div[1]/div/div/div[1]/div/div[2]/div/div/div[1]/div[10]/div[2]/div[3]/div
${Select_Season}                    xpath://div[contains(text(),'2022-2023')]
${Contract_Type_Dropdown}           xpath:/html/body/div[1]/div/div/div[1]/div/div[2]/div/div/div[1]/div[13]/div[2]/div[3]/div
${Select_Contract_Type}             xpath://div[contains(text(),'Area Contract')]
${Add_CropCycle}                    xpath:/html/body/div[1]/div/div/div[1]/div/div[2]/div/div/div[3]/div/div[2]/div


*** Keywords ***
I Open the Home Dashboard Screen
    Click Element    ${Ricult_Home_Icon}

I Open the Portfolio Side Bar
    Click Element    ${Portfolio_Side_Bar}

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
