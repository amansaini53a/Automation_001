*** Settings ***
Documentation  Resource  File for Basic Browser Start and Stop
Library  SeleniumLibrary
Library  ../External_Keywords/keyword1.py

*** Variables ***
${User_URL}  https://www.thetestingworld.com/testings/
${Input_Browser}  chrome

*** Keywords ***
Start Browser
    [Documentation]  Starts the browser
#    [Timeout]  50 seconds  Failed to execute the test case.
#    [Arguments]  ${User_URL}  ${Input_Browser}
    Open Browser  ${User_URL}  ${Input_Browser}
    Maximize Browser Window

Shut Browser
    [Documentation]  Closes the Browser and returns the title of the page
#    [timeout]  20 seconds
    ${Title}=  Get Title
    Log  ${Title}
    Close Browser
#    log to console  ${Title}
#    [Return]  ${Title}

Before Each Test Suit
    [Documentation]  $$$$$$$$$$$$$$$Before Each Test Suit$$$$$$$$$$$$$$$
    log to console  $$$$$$$$$$$$$$$Before Each Test Suit$$$$$$$$$$$$$$$$$$$
    log  Before Each Test Suit

After Each Test Suite
    [Documentation]  $$$$$$$$$$$$$$After Each Test Suite$$$$$$$$$$$$$$
    log to console  $$$$$$$$$$$$$$After Each Test Suite$$$$$$$$$$$$$$$
    log  After Each Test Suite

Create Folder At Run Time
    [Documentation]  Creates the Folder at Run Time
    create_folder