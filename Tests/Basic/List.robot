# Drop_Down :: we can select only 1 value
# List :: We can select more than 1 values
# Both are same but depends upon the selection either it is a list or dropdown
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://www.dummypoint.com/seleniumtemplate.html
${browser}  chrome

*** Test Cases ***
Test List
    Open Browser  ${url}  ${browser}
#    Maximize Browser Window
    Select From List By Index  id:dropdown  2
#    Set Selenium Speed  2seconds       #After each line of code it will wait for 2 seconds
    Select From List By Value  id:dropdown  OptionTWo
    Select From List By Label  id:dropdown  Option3
    Close Browser