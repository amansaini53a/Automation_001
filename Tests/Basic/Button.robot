*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://www.dummypoint.com/seleniumtemplate.html
${browser}  chrome

*** Test Cases ***
Test Button
    Open Browser  ${url}  ${browser}
#    Maximize Browser Window
    Click Button  xpath://input[@type='submit']
    ${default_t}=  Get Selenium Implicit Wait
    log to console  ${default_t}
    Set Selenium Implicit Wait  20 seconds
    ${default_t}=  Get Selenium Implicit Wait
    log to console  ${default_t}
    Close Browser