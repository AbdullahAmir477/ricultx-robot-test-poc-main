*** Settings ***
Documentation       User can Add the fields

Library             SeleniumLibrary
Library             Map
Resource            ../../resources/common.resource
Resource            ../../resources/keywords/login.resource
# Resource    ../../resources/keywords/farmers.resource
# Resource    ../../resources/locators/CropCycle.resource
Resource            ../../resources/locators/fields.resource
Resource            ../../resources/keywords/add_fields.resource
Resource            ../../resources/keywords/fields_detail.resource

Suite Teardown      Close All Browsers


*** Test Cases ***
TC_001: Logging in to the RicultX Site in English as Admin Should Show the Main Page
    Given I Open the RicultX Website    ${WEBSITE_URL}    Chrome
    When I Select the English Language
    And I Choose to Login by Email
    And I Enter Valid Admin Email
    And I Enter Valid Admin Password
    Then I Should See the Name of the Admin User
    # [Teardown]    Logout of RicultX


TC_3: Main page of Fields
    Given I Open the Sidebar
    And I open fields screen
    And I see the Table in fields
    And I Click on fields first row
    And I see the Preview fields
    And I Click on the Details Fields





#TC_002: Adding a Fields
#    # Given I Open the Home Dashboard Screen
##    Given I Open the RicultX Website    ${WEBSITE_URL}    Chrome
##    #Given I Open the RicultX Website in Chrome in a Container    ${WEBSITE_URL}
##    When I Select the English Language
##    And I Choose to Login by Email
##    And I Enter Valid Admin Email
##    And I Enter Valid Admin Password
#    Given I Open the Side bar for Fields Page Screen
#    And I Open the Fields Screen
#    When I Click on Add a Field button
#    And I Click on Draw
#    And I Automate the Map
#    And I Select a Farmer
#    And I Enter the Village
#    And I Click on the Submit button
