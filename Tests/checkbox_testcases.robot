*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/CommonFunctionality.robot
Resource    ../Resources/PageObjects/CheckboxesPage.robot

Test Setup      Start browser and open url
Test Teardown   Finish testcase

*** Variables ***
${browser}      chrome
${url}          https://the-internet.herokuapp.com/checkboxes


*** Test Cases ***

Verify Heroku checkboxes page
    [Tags]              Functional
    [Documentation]     Verify Heroku checkboxes page

    Verify default state
    Switch checkbox state and verify
