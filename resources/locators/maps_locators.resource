*** Settings ***
Documentation       User can Open the Map

Library             SeleniumLibrary


*** Variables ***
#    Ricult Home icon
${Ricult_Home_Icon}                  xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[1]/div[1]/div/svg/path[1]
${Portfolio_side_bar}                xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[1]/div[3]/div
${Map_button}                        xpath://div[contains(text(),'Map')]
#       Map Settings
${Map_Setting_button}                xpath://div[contains(text(),'Map Settings')]
${Satellite_Map_Type_button}         xpath:/html/body/div[7]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div[2]/div[1]/div/div/svg/rect
${Default_Math_Type_button}          xpath:/html/body/div[7]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[1]/div[2]/div[1]/div[1]/div/div/svg/rect
${NDVI_Pixels_button}                xpath:/html/body/div[7]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div[2]/div[1]/div[1]
${NDVI_Average_button}               xpath:/html/body/div[7]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div[2]/div[2]/div[1]
${Crop_Type_button}                  xpath:/html/body/div[7]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div[2]/div[3]/div[1]
${Growth_Stage_button}               xpath:/html/body/div[7]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div[2]/div[4]/div[1]
${By_Number_Count_Mode_button}       xpath:/html/body/div[7]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[3]/div[2]/div[1]/div[1]
${By_Area_Count_Mode_button}         xpath:/html/body/div[7]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[3]/div[2]/div[2]/div[1]
${Close_Map_Setting_button}          xpath://div[contains(text(),'Close')]

${Location_Search_field}             xpath:/html/body/div[1]/div/div/div[1]/div/div[1]/div[1]/div/div/div/div/div[1]/div/div[2]
${Click_Farm_ID}                     xpath:/html/body/div[1]/div/div/div[1]/div/div[1]/div[1]/div/div/div/div/div[2]/div/div/div[2]/div/div[2]/div[1]
${Click_Farm}                        xpath:/html/body/div[1]/div/div/div[1]/div/div[1]/div[1]/div/div[2]/div/div/div[1]/div[2]/div[1]

${Current_Location_button}           xpath:/html/body/div[1]/div/div/div[1]/div/div[3]/div[3]/div[4]/div[2]/button/span
${Zoom_In_button}                    xpath:/html/body/div[1]/div/div/div[1]/div/div[3]/div[3]/div[4]/div[3]/button[1]/span
${Zoom_Out_button}                   xpath:/html/body/div[1]/div/div/div[1]/div/div[3]/div[3]/div[4]/div[3]/button[1]/span





