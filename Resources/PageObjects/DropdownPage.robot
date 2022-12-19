*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${main_title_text}      css:h3
${dropdown_element}     id:dropdown


*** Keywords ***
Verify default values
    Element Text Should Be      ${main_title_text}    Dropdown List
    List Selection Should Be    ${dropdown_element}     Please select an option

Select option and verify
    [Arguments]     ${option}
    Select From List By Label   ${dropdown_element}    ${option}
    List Selection Should Be    ${dropdown_element}     ${option}