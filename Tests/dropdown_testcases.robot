*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/CommonFunctionality.robot
Resource    ../Resources/PageObjects/DropdownPage.robot

Test Setup      Start browser and open url
Test Teardown   Finish testcase


*** Variables ***
${url}          https://the-internet.herokuapp.com/dropdown


*** Test Cases ***

Verify Heroku dropdown page
    [Tags]              Functional
    [Documentation]     Verify Heroku dropdown page

    DropdownPage.Verify default values
    DropdownPage.Select option and verify   Option 1
    DropdownPage.Select option and verify   Option 2