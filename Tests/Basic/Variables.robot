#1. How to use variables in a test case
#2. List :: Create, Length of a List, Get value from the List
#3. Run for range of values, Run for values in a list
#4. Run Keyword  :: Store Keyword to a variable,Run keyword stored into the variable
#5. Run keyword if :: Conditionally execute keyword`
*** Settings ***
Library  Collections
*** Test Cases ***
TC_001

#**************************************************************
#1   How to use variables in a test case
#    ${var1}=    set variable  Helllo World
#    log to console  ${var1}
#**************************************************************
#2  List :: Create, Length of a List, Get value from the List
#    @{list1}    create list  aman  22  44  55  66
#    ${len_list}    get length  ${list1}
#    log to console  ${len_list}
#    ${list_data}=  get from list  ${list1}  0
#    log to console  ${list_data}
#**************************************************************
#3  Run for range of values, Run for values in a list
#*************Normal for Loop like Python
#    :FOR  ${i}  IN RANGE  1  10
#    \  log to console  ${i}
#    #Write any number of keywords here using \
#    :FOR  ${i}  IN  @{list1}
#    \   log to console  ${i}
#***************************************************************
#4  Run Keyword  :: Store Keyword to a variable,Run keyword stored into the variable
#    ${Key_value}=  set variable  log to console
#    run keyword  ${Key_value}  AMAN SAINI
#***************************************************************
#5  Run keyword if :: Conditionally execute keyword`
#    ${var}=  set variable  YES
#    run keyword if  '${var}'=='YES'  log to console  Found
#    run keyword if  '${var}'=='NO'  log to console  Not Found
