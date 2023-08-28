*** Settings ***
Documentation       Test all the ways that the user can log in to RicultX:
...                 1. With either English, Thai, or Urdu language.
...                 2. With email and password.
...                 3. With phone number and OTP

Library             SeleniumLibrary
Resource            ../../resources/common.resource
Resource            ../../resources/keywords/login.resource
Resource            ../../resources/locators/farmers.resource


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

TC_002: Add a Farmer from Porfolio Summary Page
	Apply Default Wait
	Given I Open The Farmers Page From Portfolio Summary
	When I Click on Add Farmer
	And I Enter the First Name
	And I Enter the Last Name
	And I Enter the National ID
	And I Enter the Phone Number
	And I Select The Province
	And I Select The District
	And I Select The Town
	And I Enter the Village Name
	And I Enter the Circle Zone
	And I Enter the Internal ID
	And I Click On The Submit Button
	Then I Should See The Added Farmer Name Page






