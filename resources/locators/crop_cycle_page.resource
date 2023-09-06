*** Settings ***
Documentation       User can Add or Edit or Delete the Crop Cycle

Library             SeleniumLibrary


*** Variables ***
#    Ricult Home icon
${Ricult_Home_Icon}                 xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[1]/div[1]/div/svg/path[1]

#    Portfolio icon on Side bar
${Portfolio_Side_bar}               xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[1]/div[3]/div/div
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
