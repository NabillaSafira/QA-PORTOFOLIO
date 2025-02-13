*** Settings ***
Resource            ../base/base.robot
Variables           ../homePage/homeLocator.yaml

*** Keywords *** 
Click Sign In Button On Home Page
    Wait Until Page Contains Element    locator=${sign_in_btn}
    Click Element    locator=${sign_in_btn}
Verify User Is Succesfully Logged In 
    Wait Until Page Contains    text="Sign Out"
Click Search Button On Home Page
    Wait Until Page Contains    text="Sign Out"
    Click Element    locator=${search_btn}