*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Browser}  Chrome
${URL}  http://www.google.com


*** Test Cases ***
TC 001 Start Browser
    Open Browser  ${URL}  ${Browser}
    close browser