*** Settings ***
Documentation       User can Add and Edit or Delete the Farmers.

Library             SeleniumLibrary
Resource            ../common.resource
Resource            ../locators/login_page.resource
Resource            ../locators/common_components.resource
Resource            ../locators/farmers_locators.resource


*** Variables ***
#    Valid Input Data

${First_Name_Farmer}        Abdullah    # First Name required
${Last_Name_Farmer}         Tester    # Last Name required
${National_ID}              ${EMPTY}    # 4569251239735    #National ID optional 13 digits
${Phone_Number}             ${EMPTY}    # 03017877265    #Phone Number optional
${Village}                  ${EMPTY}    # VillageTest    #Village Name optional
${Circle_Zone}              ${EMPTY}    # ZoneTest    #Zone Name optional
${Internal_ID}              qwe123rty    # Enter the Internal ID required

#    Invalid Input Data
${Invalid_First_Name}       Luxman@123
${Invalid_Last_Name}        123%Parshaat

#    Edit Input Data Farmer
${Update_First_Name}        Amir
${Update_Last_Name}         Khan
${Update_National_ID}       2569421239735
${Update_Phone_Number}      03028598741
${Update_Village}           Pind
${Update_Circle_zone}       Township
${Update_Internal_ID}       asd543fgh


*** Keywords ***
#   Check the Filters on portfolio listing page
I Click on the Filter Button
    Wait Until Page Contains Element    ${filters_button}
    Click Element    ${filters_button}
    
I Apply Some Filters
    Wait Until Page Contains Element    ${season_range}
    Click Element    ${season_range}
    Wait Until Page Contains Element    ${sugarcane_filter}
    Click Element    ${sugarcane_filter}
    Wait Until Page Contains Element    ${apply_filter_button}
    Click Element    ${apply_filter_button}
    
I Clear the Filters
    Sleep    5s
    Wait Until Page Contains Element    ${filters_button}
    Click Element    ${filters_button}
    Sleep    4s
    Wait Until Page Contains Element    ${clear_filter_button}
    Click Element    ${clear_filter_button}
    Sleep    5s


#   Search the Farmer by entering the ID
I Enter the Farmer ID for Search the Farmer
    Wait Until Element Contains    ${farmer_title_name}    Farmers
    Click Element    ${farmers_search_bar}
    Press Keys      ${farmers_search_bar}       ${farmer_search_input}
    Sleep    7s
    Wait Until Page Contains Element    ${search_result_click}
    Click Element    ${search_result_click}
    Sleep    5s
    Click Element    ${search_cross_icon}
    Sleep    3s

#   Click on any farmer for view the preview detail
I Click on the Farmer to see the Preview
    Wait Until Page Contains Element    ${click_first_listing_farmer}
    Click Element    ${click_first_listing_farmer}
    Wait Until Page Contains Element    ${preview_detail_visible}
    Click Element    ${preview_edit_button}
    Wait Until Page Contains Element    ${preview_detail_page_cancel_button}
    Click Element    ${preview_detail_page_cancel_button}
    Wait Until Page Contains Element    ${confirm_button_farmer_edit_detail}
    Click Element    ${confirm_button_farmer_edit_detail}
    Sleep    3s





#    Invalid Input Data Keywords
I Enter the Invalid First Name
    Wait Until Page Contains Element    ${First_Name_Farmer_Path}
    Press Keys    ${First_Name_Farmer_Path}    ${Invalid_First_Name}

I Enter the Invalid Last Name
    Wait Until Page Contains Element    ${Last_Name_Farmer_Path}
    Press Keys    ${Last_Name_Farmer_Path}    ${Invalid_Last_Name}

I Should see the Error Message
    Element Should Be Visible    ${Invalid_Error_Msg_Farmer}
    Click Element    ${Cancel_Button_Farmer}
    # Wait Until Element Contains    ${Confirm_Button_Lable}    Confirm
    Click Element    ${Confirm_Button_Farmer}

#    Add the Farmer

I Open the Farmers page from Portfolio Summary
    # Wait Until Page Contains    ${PORTFOLIO_SUMMARY_MAIN_PAGE}
    Click Element    ${CLICK_FARMERS_SECTION}

I Click on Add Farmer
    Execute Javascript    window.scrollTo(0,0)
    Wait Until Element Contains    ${Add_Farmer_Button_Lable}    Add Farmer
    Click Element    ${ADD_FARMER_BUTTON}

I Enter the First Name
    Wait Until Page Contains Element    ${First_Name_Farmer_Path}
    Press Keys    ${First_Name_Farmer_Path}    ${First_Name_Farmer}

I Enter the Last Name
    Wait Until Page Contains Element    ${Last_Name_Farmer_Path}
    Press Keys    ${Last_Name_Farmer_Path}    ${Last_Name_Farmer}

I Enter the National ID
    Wait Until Page Contains Element    ${National_ID_Path}
    Press Keys    ${National_ID_Path}    ${National_ID}

I Enter the Phone Number
    Wait Until Page Contains Element    ${Phone_Number_Path}
    Press Keys    ${Phone_Number_Path}    ${Phone_Number}

I Select the Province
    Click Element    ${Province_Dropdown}
    Wait Until Element Contains    ${Select_Province}    Punjab
    Click Element    ${Select_Province}

I Select the District
    Click Element    ${District_Dropdown}
    Wait Until Element Contains    ${Select_District}    Lahore
    Click Element    ${Select_District}

I Select the Town
    Click Element    ${Town_Dropdown}
    Wait Until Element Contains    ${Select_Town}    Model town
    Click Element    ${Select_Town}

I Enter the Village Name
    Press Keys    ${Village_Path}    ${Village}

I Enter the Circle Zone
    Press Keys    ${Circle_Zone_Path}    ${Circle_Zone}

I Enter the Internal ID
    Wait Until Page Contains Element    ${Internal_ID_Path}
    Press Keys    ${Internal_ID_Path}    ${Internal_ID}

I Click on the Submit Button
    Click Element    ${Submit_Button}
    Wait Until Page Contains Element    ${Edit_Icon_Farmer}
# I Should see the Added Farmer Name page
#    Wait Until Element Contains    4sec    2sec    New farmer added succesfully


#    Edit/Update the Added Farmer details

I Open the Edit Screen
    Click Element    ${Edit_Icon_Farmer}

I Enter the Updated First Name
    # Clear Element Text    ${First_Name_Farmer}
    Wait Until Page Contains Element    ${First_Name_Farmer_Path}
    Press Keys    ${First_Name_Farmer_Path}    ${Update_First_Name}

I Enter the Updated Last Name
    # Clear Element Text    ${Last_Name_Farmer}
    Wait Until Page Contains Element    ${Last_Name_Farmer_Path}
    Press Keys    ${Last_Name_Farmer_Path}    ${Update_Last_Name}

I Enter the Updated National ID
    Wait Until Page Contains Element    ${National_ID_Path}
    Press Keys    ${National_ID_Path}    ${Update_National_ID}

I Enter the Updated Phone Number
    Wait Until Page Contains Element    ${Phone_Number_Path}
    Press Keys    ${Phone_Number_Path}    ${Update_Phone_Number}

I Select the Updated Province
    Click Element    ${Province_Dropdown}
    Wait Until Element Contains    ${Update_Select_Provice}    Baluchistan
    Click Element    ${Update_Select_Provice}

I Select the Updated District
    Click Element    ${District_Dropdown}
    Wait Until Element Contains    ${Update_Select_District}    Quetta
    Click Element    ${Update_Select_District}

I Select the Updated Town
    Click Element    ${Town_Dropdown}
    Wait Until Element Contains    ${Update_Select_Town}    Pashin
    Click Element    ${Update_Select_Town}

I Enter the Updated Village Name
    Press Keys    ${Village_Path}    ${Update_Village}

I Enter the Updated Circle Zone
    Press Keys    ${Circle_Zone_Path}    ${Update_Circle_zone}

I Enter the Updated Internal ID
    Wait Until Page Contains Element    ${Internal_ID_Path}
    Press Keys    ${Internal_ID_Path}    ${Update_Internal_ID}

I Click on the Submit Button for Update
    Click Element    ${Update_Submit_Button}
    # Sleep    3s
