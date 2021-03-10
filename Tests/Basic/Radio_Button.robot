*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://www.dummypoint.com/seleniumtemplate.html
${browser}  chrome

*** Test Cases ***
Test Radio Button
    Open Browser  ${url}  ${browser}
# Maximize Browser Window
# 2 values for radio button, (group & value)
# Group : name : textbox,radio,check box
# value :  Button1/2/3/4.
    Select Radio Button  radio  Button1
    Select Radio Button  radio  Button2
    Select Radio Button  radio  Button3
    Select Radio Button  radio  Button4
#    Close Browser