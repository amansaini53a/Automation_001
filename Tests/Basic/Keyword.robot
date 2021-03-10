# Demo Program NOt specified for any URL

*** Settings ***
Library  seleniumlibrary

*** Variables ***
${url}  http://www.dummypoint.com/seleniumtemplate.html
${browser}  chrome

*** Test Cases ***
Test List
    Open Browser  ${url}  ${browser}
    Enter Username Password Email  amansaini53  12345  amansaini53@gmail.com

*** Keywords ***
Enter Username Password Email
    [Arguments]  ${username}  ${password}  ${email}
    Input Text  name:id_username  ${username}
    Input Text  name:id_username  ${password}
    Input Text  name:id_username  ${email}
