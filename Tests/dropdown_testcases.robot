*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/CommonFunctionality.robot
Resource    ../Resources/PageObjects/DropdownPage.robot

Test Setup      Start browser and open url
Test Teardown   Finish testcase


*** Variables ***
${browser}      chrome
${url}          https://the-internet.herokuapp.com/dropdown


*** Test Cases ***

Verify Heroku main page titles
    [Tags]              Functional
    [Documentation]     Verify Heroku main page titles

    DropdownPage.Verify default values
    DropdownPage.Select option and verify   Option 1
    DropdownPage.Select option and verify   Option 2