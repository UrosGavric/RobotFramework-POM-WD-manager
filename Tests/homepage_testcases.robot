*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/CommonFunctionality.robot
Resource    ../Resources/PageObjects/HomePage.robot

Test Setup      Start browser and open url
Test Teardown   Finish testcase


*** Variables ***
${browser}      chrome
${url}          https://the-internet.herokuapp.com/


*** Test Cases ***

Verify Heroku main page titles
    [Tags]              Functional
    [Documentation]     Verify Heroku main page titles

    HomePage.Verify page titles
