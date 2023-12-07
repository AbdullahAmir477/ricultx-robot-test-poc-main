*** Settings ***
Documentation       User can Add the Check List

Library             SeleniumLibrary


*** Variables ***
#    Ricult Home icon
${Ricult_Home_Icon}                  xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[1]/div[1]/div/svg/path[1]
${Portfolio_side_bar}                xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[1]/div[3]/div
${Main_Check_List_button}            xpath://div[contains(text(),'Checklist')]
${Check_List}                        xpath://div[contains(text(),'Sugarcane Sowing Prep')]
${Check_List_Activity}               xpath://div[contains(text(),'Activity1')]
${First_Check_List_ID}               xpath:/html/body/div[1]/div/div/div[1]/div/div[5]/div[1]/table/tbody/tr[1]/td[1]/div
${Data_Collection}                   xpath://div[contains(text(),'Data collected')]
${Click_Activity_List}               xpath:/html/body/div[1]/div/div/div[1]/div/div[2]/div[2]/div[2]/div[2]/div[2]/div/div/div/div/div[2]/div[1]/div[1]
${Click_Edit_Activity}               xpath:/html/body/div[1]/div/div/div[1]/div/div[2]/div/div[1]/div/div[2]/div[2]
${Select_Check_option}               xpath:/html/body/div[1]/div/div/div[1]/div/div[2]/div/div[1]/div/div[2]/div/div[3]/div[2]/div/div[2]/div/div[1]
${Save_Button}                       xpath://div[contains(text(),'Save')]
${Back_Button}                       xpath:/html/body/div[1]/div/div/div[2]/div[1]/div/div[1]/div
${Export_Button}                     xpath://div[contains(text(),'Export')]
${Download_Button}                   xpath://div[contains(text(),'Download')]
${Ok_Button}                         xpath://div[contains(text(),'Okay')]
${Preview_Button}                    xpath://div[contains(text(),'Preview')]
${Cross_Button}                      xpath:/html/body/div[1]/div/div/div[1]/div/div[5]/div[2]/div/div[1]/div[2]/div[3]
