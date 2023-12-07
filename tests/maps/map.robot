*** Settings ***
Documentation       User can the Map

Library             SeleniumLibrary
Resource            ../../resources/common.resource
Resource            ../../resources/keywords/login.resource
#Resource            ../../resources/keywords/farmers.resource
Resource            ../../resources/keywords/maps_keyword.resource

Suite Setup         Login as an Admin
Suite Teardown      Close All Browsers


*** Test Cases ***
TC-1: Go to the Map and Press the Current Navigation
    Given I Open the Home Dashboard Screen
    And I Open the Portfolio Side Bar
    When I Click on the Map
    And I Click on the Current Live Navigation button
TC-2: Open the Map Settings and Click on the Map Type and Map Overlay
    Given I Open the Map Setting
    When I Select the Satellite Map Type and Select the Map Overlay
    And I Select the NDVI Average
    And I Select the Crop Type
    And I Select the Growth Stage and Default Map Type and also select the count mode in "number"
    And I Click on the Close button
TC-3: Search any Farm
    Given I Entered the Farm Id in search bar

