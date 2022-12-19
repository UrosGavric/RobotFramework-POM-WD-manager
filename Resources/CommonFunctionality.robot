*** Settings ***
Library     SeleniumLibrary
Library     Webdriver_manager.py


*** Variables ***
${browser}  firefox
${url}


*** Keywords ***
Start browser and open url
    ${driver_path}=     Webdriver_manager.Get Driver Path With Browser      ${browser}
    Open Browser        ${url}     ${browser}     executable_path=${driver_path}
    Maximize Browser Window

Finish testcase
    Close Browser