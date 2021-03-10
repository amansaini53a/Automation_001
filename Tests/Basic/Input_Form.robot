*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://www.dummypoint.com/seleniumtemplate.html
${browser}  chrome

*** Test Cases ***
Test Check Box
    Open Browser  ${url}  ${browser}
#    Maximize Browser Window
    Select Check Box  name:checkbox
    Close Browser