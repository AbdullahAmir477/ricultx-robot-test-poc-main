*** Settings ***
Documentation       User can Add the Check List

Library             SeleniumLibrary
Resource            ../locators/check_list_page.resource


*** Keywords ***

I Open the Home Dashboard Screen
    Click Element    ${Ricult_Home_Icon}

I Open the Portfolio Side Bar
    Click Element    ${Portfolio_side_bar}

I Click on the Check List and check list Activity
    Click Element    ${Main_Check_List_button}
    Sleep    2s
    Click Element    ${Check_List}
    Click Element    ${Check_List_Activity}
    Sleep    2s

I Click on Check List and Export the File
    Sleep    2s
    Click Element    ${Export_Button}
    Click Element    ${Download_Button}
    Click Element    ${Ok_Button}
    Sleep    2s

I Click on the First Check List ID
    Click Element    ${First_Check_List_ID}
    Sleep    3s

I Click on the Activity and Edit it
    Click Element    ${Data_Collection}
    Click Element    ${Click_Activity_List}
    Click Element    ${Click_Edit_Activity}
    Click Element    ${Select_Check_option}
    Click Element    ${Save_Button}
    Sleep    2s
    Click Element    ${Back_Button}
    Sleep    2s
    Click Element    ${Back_Button}

#I Export the File
#    Click Element    ${Export_Button}
#    Click Element    ${Download_Button}
#    Click Element    ${Ok_Button}

I Check the Preview Detail Screen
    Click Element    ${Preview_Button}
    Click Element    ${First_Check_List_ID}
    Sleep    2s
    Click Element    ${Cross_Button}



