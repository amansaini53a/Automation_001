*** Settings ***
Resource  ../../Resources/Browser.robot
Test Setup  Start Browser
Test Teardown  Shut Browser

*** Test Cases ***
TC_001
    ${Page_Title}=  Get Title
    Log  ${Page_Title}
    ${Speed}=  Get Selenium Speed
    Log  ${Speed}
    ${Value}=  Get Value  xpath://input[@type='submit']
    Log  ${Value}
    ${Text}=  Get Text  xpath://a[@class='displayPopup']
    Log  ${Text}