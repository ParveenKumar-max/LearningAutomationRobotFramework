*** Settings ***
#Documentation    Robot file,all TC's
Library    SeleniumLibrary
Resource       Ex_01_PythonBasicsRes.robot
Resource        All_TC's_Keywords.robot
Suite Setup    Open the URL Successsfully
Suite Teardown    Closed the Browser

*** Test Cases ***
Verifying unsuccesfull login
    Fill up the Form    ${ValidUserName}    ${InvalidPassword}
    Wait Until element is located on Page    ${ActualErrorMessage}
    Verifying error message is correct

Verify Successfull Login and see shop page
    Fill up the Form    ${ValidUserName}    ${ValidPassword}
    Wait Until element is located on Page    ${ShopPage}
    User able to see Shop Page    







