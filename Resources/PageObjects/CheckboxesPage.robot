*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${main_title_text}  css:h3
${checkbox_1}       css:#checkboxes > input:nth-of-type(1)
${checkbox_2}       css:#checkboxes > input:nth-of-type(2)

*** Keywords ***
Verify default state
    Element Text Should Be              ${main_title_text}    Checkboxes
    Checkbox Should Not Be Selected     ${checkbox_1}
    Checkbox Should Be Selected         ${checkbox_2}

Switch checkbox state and verify
    Select Checkbox                     ${checkbox_1}
    Unselect Checkbox                   ${checkbox_2}
    Checkbox Should Be Selected         ${checkbox_1}
    Checkbox Should Not Be Selected     ${checkbox_2}