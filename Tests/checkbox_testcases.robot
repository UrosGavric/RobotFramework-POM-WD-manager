*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/CommonFunctionality.robot
Resource    ../Resources/PageObjects/CheckboxesPage.robot

Test Setup      Start browser and open url
Test Teardown   Finish testcase

*** Variables ***
${url}          https://the-internet.herokuapp.com/checkboxes


*** Test Cases ***

Verify Heroku checkboxes page
    [Tags]              Functional
    [Documentation]     Verify Heroku checkboxes page

    CheckboxesPage.Verify default state
    CheckboxesPage.Switch checkbox state and verify
