*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}  http://www.dummypoint.com/seleniumtemplate.html
${browser}  chrome
*** Test Cases ***
Enter Text
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  name:textbox  Aman Saini
    Clear Element Text  name:textbox
    Input Text  xpath://input[@name='textbox']  amansaini

#    Close Browser