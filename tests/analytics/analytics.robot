*** Settings ***
Documentation       User can the Analytics Page

Library             SeleniumLibrary
Resource            ../../resources/common.resource
Resource            ../../resources/keywords/login.resource
#Resource            ../../resources/keywords/farmers.resource
Resource            ../../resources/keywords/analytics_keywords.resource

Suite Setup         Login as an Admin
Suite Teardown      Close All Browsers


*** Test Cases ***