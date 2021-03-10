*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://www.dummypoint.com/seleniumtemplate.html
${browser}  chrome

*** Test Cases ***
Test Link
#
    Open Browser  ${url}  ${browser}
#    Maximize Browser Window
    Click Link  xpath://a[text() = 'Locators']
    Close Browser