*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/CommonFunctionality.robot
Resource    ../Resources/PageObjects/HomePage.robot

Test Setup      Start browser and open url
Test Teardown   Finish testcase


*** Variables ***
${url}          https://the-internet.herokuapp.com/


*** Test Cases ***

Verify Heroku main page titles and links
    [Tags]              Functional
    [Documentation]     Verify Heroku main page titles and links

    HomePage.Verify page titles
    HomePage.Verify links
