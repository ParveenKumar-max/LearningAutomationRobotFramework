*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Fill up the Form
    [Arguments]    ${username}    ${password}
    Maximize Browser Window
    Input Text    //*[@id="username"]    ${username}
    Input Password    //*[@id="password"]   ${password}

#Select User Role as User
    #Select Radio Button    ${RadioButtonLocator}    user

Wait Until element is located on Page
    [Arguments]    ${element}
    Click Button     //*[@id="signInBtn"]

Verifying error message is correct
    Wait Until Element Is Visible    ${element}    10
    ${GetErrorMessage} =     Get Text    ${element}
    Should Be Equal As Strings    ${GetErrorMessage}    ${ActualErrorMessage}

User able to see Shop Page
    Wait Until Element Is Visible    ${ShopPage}
    Element Should Contain    ${ShopPage}     Checkout ( 0 )
    Sleep    5
