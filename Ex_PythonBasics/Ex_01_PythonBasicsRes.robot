*** Settings ***
#Documentation    Added Resource file to store Variables and Keywords
Library    SeleniumLibrary


*** Variables ***
${URL}    https://rahulshettyacademy.com/loginpagePractise/
${ValidUserName}    rahulshettyacademy
${InvalidPassword}    123456789
${ValidPassword}        learning
${RadioButtonLocator}    //*[@id="usertype"]
${ActualErrorMessage}    Incorrect username/password.
${element}    //*[@id="login-form"]/div[1]
${ShopPage}    //*[@class="nav-link btn btn-primary"]

*** Keywords ***
Open the URL Successsfully
    Open Browser    ${URL}    Edge

    
Closed the Browser
    Close Browser

