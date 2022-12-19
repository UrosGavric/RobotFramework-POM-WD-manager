*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${main_title_text}  css:h1
${sub_title_text}  css:h2

*** Keywords ***
Verify page titles
    Element Text Should Be    ${main_title_text}  Welcome to the-internet
    Element Text Should Be    ${sub_title_text}  Available Examples

Verify links
