*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${base_url}                     https://the-internet.herokuapp.com
${main_title_text}              css:h1
${sub_title_text}               css:h2
${ab_testing_link}              link:A/B Testing
${add_remove_elements_link}     link:Add/Remove Elements
${basic_auth_link}              link:Basic Auth
${broken_images_link}           link:Broken Images
${challenging_dom_link}         link:Challenging DOM

*** Keywords ***
Verify page titles
    Element Text Should Be    ${main_title_text}  Welcome to the-internet
    Element Text Should Be    ${sub_title_text}  Available Examples

Verify links
    Element Attribute Value Should Be    ${ab_testing_link}             href    ${base_url}/abtest
    Element Attribute Value Should Be    ${add_remove_elements_link}    href    ${base_url}/add_remove_elements/
    Element Attribute Value Should Be    ${basic_auth_link}             href    ${base_url}/basic_auth
    Element Attribute Value Should Be    ${broken_images_link}          href    ${base_url}/broken_images
    Element Attribute Value Should Be    ${challenging_dom_link}        href    ${base_url}/challenging_dom
