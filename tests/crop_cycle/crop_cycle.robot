*** Settings ***
Documentation       User can Add or Edit or Delete the Crop Cycle

Library             SeleniumLibrary
Resource            ../../resources/common.resource
Resource            ../../resources/keywords/login.resource
Resource            ../../resources/keywords/farmers.resource
Resource            ../../resources/keywords/crop_cycle.resource

Suite Setup         Login as an Admin
Suite Teardown      Close All Browsers


*** Test Cases ***
TC_002: Adding the Crop Cycle
    # Given I Open the Home Dashboard Screen
    Given I Open the Portfolio Side Bar
    And I Open the Crop Cycle Page Screen
    When I Click on Add a Crop Cycle button
    And I Select the Crop Type
    And I Select Crop Variant
    And I Select Plant Type
    And I Enter the Area
    And I Choose the Sowing Date
    And I Select the Season
    And I Select the Contract Type
    And I Click on Add a CropCycle