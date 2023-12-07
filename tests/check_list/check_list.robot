*** Settings ***
Documentation       User can Add the Check List

Library             SeleniumLibrary

Resource            ../../resources/common.resource
Resource            ../../resources/keywords/login.resource
Resource            ../../resources/keywords/farmers.resource
Resource            ../../resources/locators/farmers_locators.resource

Resource            ../../resources/keywords/check_list.resource
Resource            ../../resources/locators/check_list_page.resource

Suite Setup         Login as an Admin
Suite Teardown      Close All Browsers


*** Test Cases ***
TC_001: Check List and Export the File
    Given I Open the Portfolio Side Bar
    When I Click on the Check List and check list Activity
    And I Click on Check List and Export the File

TC_002: Check List and Edit the Activity and check the Preview screen
    Given I Click on the First Check List ID
    When I Click on the Activity and Edit it
    And I Check the Preview Detail Screen
