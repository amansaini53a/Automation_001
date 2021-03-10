*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/Browser.robot
Documentation  To check the speed of selenium
Test Setup  Start Browser
Test Teardown  Shut Browser
#Suite Setup  Before Each Test Suit
#Suite Teardown  After Each Test Suite

*** Test Cases ***
TC_001
    [Documentation]  Simple test case to check the selenium speed keyword
    ${speed}=  Get Selenium Speed
    log to console  ${speed}
    Set Selenium Speed  20 seconds
    log to console  Aman Saini
    ${speed}=  Get Selenium Speed
    log to console  ${speed}
