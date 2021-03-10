*** Settings ***
Resource  ../../Resources/Test_Keywords.robot

*** Test Cases ***
TC_002
    Create Folder at Run Time  abc
    Add UserName And Password  aman  saini