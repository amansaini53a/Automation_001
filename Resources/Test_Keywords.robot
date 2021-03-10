*** Settings ***

Library  ../External_Keywords/keyword1.py

*** Keywords ***
Create Folder at Run Time
    [Documentation]  Creates the Directory
    [Arguments]  ${folder_name}
    create_folder  ${folder_name}
    log  Task Done Sucessfully

Add UserName And Password
    [Arguments]  ${uname}  ${pass}
    ${res}=  add_values  ${uname}  ${pass}
    log  ${res}