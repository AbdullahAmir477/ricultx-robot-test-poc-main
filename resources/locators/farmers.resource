*** Settings ***
Documentation       User can Add and Edit or Delete the Farmers.

Library             SeleniumLibrary
Resource            ../common.resource
Resource            ../locators/login_page.resource
Resource            ../locators/common_components.resource


*** Variables ***
${First_Name_Farmer}        dfg  #AbdullahTest        #First Name required
${Last_Name_Farmer}         fdg  #Tester              #Last Name required
${National_ID}              #4569251239735       #National ID optional 13 digits
${Phone_Number}             #03017877265         #Phone Number optional
${Village}                  #VillageTest         #Village Name optional
${Circle_Zone}              #ZoneTest            #Zone Name optional
${Internal_ID}              qwe123rty           #Enter the Internal ID required




*** Keywords ***
Apply Default Wait
	Sleep    5s

I Open the Farmers page from Portfolio Summary
	#Wait Until Page Contains    ${PORTFOLIO_SUMMARY_MAIN_PAGE}
	#Sleep    3s
	Click Element    ${CLICK_FARMERS_SECTION}
I Click on Add Farmer
	Sleep    4s
	Click Element    ${ADD_FARMER_BUTTON}
	Sleep    4s
I Enter the First Name
	Sleep    3s
	Press Keys        ${First_Name_Farmer_Path}     ${First_Name_Farmer}
I Enter the Last Name
	Press Keys        ${Last_Name_Farmer_Path}      ${Last_Name_Farmer}
I Enter the National ID
	Press Keys        ${National_ID_Path}       ${National_ID}
I Enter the Phone Number
	Press Keys        ${Phone_Number_Path}      ${Phone_Number}
I Select the Province
	Sleep    3s
	Click Element    ${Province_Dropdown}
	Sleep    2s
	Click Element    ${Select_Province}
I Select the District
	Sleep    3s
	Click Element    ${District_Dropdown}
	Sleep    4s
	Click Element    ${Select_District}
I Select the Town
	Sleep    4s
	Click Element    ${Town_Dropdown}
	Sleep    4s
	Click Element    ${Select_Town}
I Enter the Village Name
	Press Keys       ${Village_Path}        ${Village}
I Enter the Circle Zone
	Press Keys       ${Circle_Zone_Path}        ${Circle_Zone}
I Enter the Internal ID
	Sleep    2s
	Press Keys       ${Internal_ID_Path}        ${Internal_ID}
	Sleep    2s
I Click on the Submit Button
	Click Element    ${Submit_Button}
	Sleep    3s
I Should see the Added Farmer Name page
	Wait Until Element Contains    4sec     2sec        New farmer added succesfully




*** Keywords ***
