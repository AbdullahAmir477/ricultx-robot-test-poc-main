*** Settings ***
Documentation       DOM components that are available anywhere in the site.


*** Variables ***
${NAV_USER_FULL_NAME}               xpath:/html/body/div[1]/div/div/div[2]/div[1]/div/div[2]/div/div[1]/div[2]/div[1]
${NAV_USER_ROLE}                    xpath:/html/body/div[1]/div/div/div[2]/div[1]/div/div[2]/div/div[1]/div[2]/div[2]
${NAV_USER_DROPDOWN}                xpath:/html/body/div[1]/div/div/div[2]/div[1]/div/div[2]/div/div[2]/div[1]

${LOGOUT_BUTTON}                    xpath:/html/body/div[1]/div/div/div[2]/div[1]/div/div[2]/div/div[2]/div[2]/div/div/div[4]/div[2]

${PORTFOLIO_SUMMARY_MAIN_PAGE}      xpath://body/div[@id='root']/div[1]/div[1]/div[1]/div[1]
${CLICK_FARMERS_SECTION}            xpath://body/div[@id='root']/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]    # Click on Farmer tab from Portfolio Summary Page

${ADD_FARMER_MAIN_PAGE}             xpath:/html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/div[1]    # wait for main page
${ADD_FARMER_BUTTON}                xpath:/html/body/div[1]/div/div/div[1]/div/div[1]/div    # //body/div[@id='root']/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]    #Click on the Add Farmer button


${ADD_FARMER_MAIN_PAGE}             xpath:/html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/div[1]   #wait for main page
${ADD_FARMER_BUTTON}                xpath:/html/body/div[1]/div/div/div[1]/div/div[1]/div  #//body/div[@id='root']/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]     #Click on the Add Farmer button


#       Add Farmers fields path
${First_Name_Farmer_Path}            xpath://body/div[@id='root']/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[3]/div[1]/div[2]/div[2]/input[1]       #Input First Name Farmer
${Last_Name_Farmer_Path}             xpath://body/div[@id='root']/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[4]/div[1]/div[2]/div[2]/input[1]       #Input Last Name Farmer
${National_ID_Path}                  xpath://body/div[@id='root']/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[5]/div[1]/div[2]/div[2]/input[1]       #Input national id 13 digit
${Phone_Number_Path}                 xpath://body/div[@id='root']/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[6]/div[1]/div[2]/div[2]/input[1]       #Enter the Phone Number
${Province_Dropdown}                 xpath://body/div[@id='root']/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[9]/div[1]/div[1]/div[2]/div[2]        #click and open the province dropdown
${Select_Province}                   xpath://div[contains(text(),'Punjab')]     #Select the province
${District_Dropdown}                 xpath://body/div[@id='root']/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[10]/div[1]/div[1]/div[2]/div[2]       #click and open the District
${Select_District}                   xpath://div[contains(text(),'Lahore')]     #Select the district
${Town_Dropdown}                     xpath://body/div[@id='root']/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[11]/div[1]/div[1]/div[2]/div[2]       #click and open the Tehsil/Town
${Select_Town}                       xpath://div[contains(text(),'Model town')]     #Select the town/tehsil
${Village_Path}                      xpath://body/div[@id='root']/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[12]/div[1]/div[2]/div[2]/input[1]      #Enter the name of Village optional
${Circle_Zone_Path}                  xpath://body/div[@id='root']/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[13]/div[1]/div[2]/div[2]/input[1]      #Enter the Circle Zone
${Internal_ID_Path}                  xpath://body/div[@id='root']/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[16]/div[1]/div[2]/div[2]/input[1]      #Enter the Internal ID
${Submit_Button}                     xpath://div[contains(text(),'Submit')]        #Click on the Submit button


#       For Negative Test Case Check Error Message when user enter Invalid Name (first+last)
${Invalid_Error_Msg_Farmer}          xpath://div[contains(text(),'Only alphabets are allowed for this field.')]     #Invalid error message path
${Cancel_Button_Farmer}              xpath://div[contains(text(),'Cancel')]   #Cancel button
${Confirm_Button_Farmer}             xpath://div[contains(text(),'Confirm')]        #Confirm button


#       Edit the Added Farrmer
${Edit_Icon_Farmer}                  xpath:/html/body/div[1]/div/div/div[1]/div/div[2]/div/div[1]/div[2]/div[2]/div[2]       #Press Edit Icon on added farmer page screen
${Update_Select_Provice}             xpath://div[contains(text(),'Baluchistan')]         #Select Province
${Update_Select_District}            xpath://div[contains(text(),'Quetta')]              #Select District
${Update_Select_Town}                xpath://div[contains(text(),'Pashin')]              #Select Town
${Update_Submit_Button}              xpath://div[contains(text(),'Submit')]        #Click on the Submit button


#       Wait Locators
${Confirm_Button_Lable}              xpath:/html/body/div[11]/div/div[2]/div/div/div[2]/div/div[2]/div[2]/div
${Add_Farmer_Button_Lable}           xpath:/html/body/div[1]/div/div/div[1]/div/div[1]/div/div/div[2]



#       Clear Text path
${Clear_First_Name}                  xpath:/html/body/div[1]/div/div/div[1]/div/div[2]/div/div/div[1]/div[3]/div/div[2]/div[2]/input


#   Ricult Home icon
#${Ricult_Home_Icon}         xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[1]/div[1]/div/svg/path[1]

#   Portfolio icon on Side bar
${Portfolio_Side_Bar}       xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[1]/div[3]/div/div