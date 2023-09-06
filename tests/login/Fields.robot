*** Settings ***
Documentation       User can Add the fields

Library             SeleniumLibrary
Resource            ../../resources/common.resource
Resource            ../../resources/keywords/login.resource
Resource            ../../resources/locators/farmers.resource
#Resource            ../../resources/locators/CropCycle.resource
Resource            ../../resources/locators/Fields.resource


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


TC_002: Adding a Fields
    #Given I Open the Home Dashboard Screen
    Given I Open the Fields Page Screen
    And I Open the Fields Screen
    When I Click on Add a Field button
    And I Click on Draw







