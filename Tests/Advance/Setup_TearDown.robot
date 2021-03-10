#Absolute path (use forward slash / Don't use absolute path because on sharing the code it will create the problem)
#Resource  C:/Users/my pc/PycharmProjects/pythonProject/Resources/Setup_TearDown.robot

*** Settings ***
Documentation  SETUP_TEAR_DOWN
Test Setup  log to console  $$$$$$$$$TEST SETUP$$$$$$$$$$$$
Test Teardown  log to console  $$$$$$$$$TEST TEAR DOWN$$$$$$$$$$$$
#Default Tags :: Will Run to the all test cases which are not applied with the tags.
default tags  DFLT
#Forced Tags :: Will applied to all the test cases
force tags  ALL_TC

#Suite Setup  Before Each Test Suit
#Suite Teardown  After Each Test Suite
#Test Timeout  50 seconds   // Will be applied for all the test cases.

*** Test Cases ***
First Test Case
    [Documentation]  *********FIRST TEST CASE*************
    [Setup]    log to console  ************11111 [Setup] Test Case 1111**************   # Runs always
    [Teardown]  log to console  ************ 1111 [Teardown] Test Case 1111*************
    [Tags]  Smoke
    log to console  First Test Case

Second Test Case
    [Documentation]  *********SECOND TEST CASE*************
#    [Setup]  log to console  *********** 2222 [Setup] Test Case 2222 **************
#    [Teardown]  log to console  ************ 2222 [Teardown] Test Case 2222 ***********
    [Tags]  Smoke  Sanity
    log to console  Second Test Case
Third Test Case
    [Documentation]  *********THIRD TEST CASE*************
    [Tags]  Regression
    log to console  Third Test Case
Fourth Test Case
    [Documentation]  *********FOURTH TEST CASE*************
    log to console  Fourth Test Case

