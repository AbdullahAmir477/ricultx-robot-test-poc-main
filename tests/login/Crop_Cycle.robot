*** Settings ***
Documentation       Test all the ways that the user can log in to RicultX:
...                 1. With either English, Thai, or Urdu language.
...                 2. With email and password.
...                 3. With phone number and OTP

Library             SeleniumLibrary
Resource            ../../resources/common.resource
Resource            ../../resources/keywords/login.resource
Resource            ../../resources/locators/farmers.resource
Resource            ../../resources/locators/CropCycle.resource


Suite Teardown      Close All Browsers




*** Test Cases ***
TC_001: Logging in to the RicultX Site in English as Admin Should Show the Main Page
    Given I Open the RicultX Website    ${WEBSITE_URL}    Chrome
    When I Select the English Language
    And I Choose to Login by Email
    And I Enter Valid Admin Email
    And I Enter Valid Admin Password
    Then I Should See the Name of the Admin User
    #[Teardown]    Logout of RicultX


TC_002: Adding the Crop Cycle
    #Given I Open the Home Dashboard Screen
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


