*** Settings ***

Suite Setup  Before Each Test Suite
Suite Teardown  After Each Test Suite
Documentation  Init file to run all the test case in Advance Suite
*** Variables ***


*** Keywords ***
Before Each Test Suite
    [Documentation]  Before Each Test Suite
    log to console  Before Each Test Suite

After Each Test Suite
    [Documentation]  After Each Test Suite
    log to console  After Each Test Suite
