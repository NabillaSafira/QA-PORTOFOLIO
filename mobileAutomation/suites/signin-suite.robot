*** Settings ***
Resource             ../pageObject/homePage/homePage.robot
Resource             ../pageObject/signinPage/signinPage.robot



*** Test Cases ***
Login with valid data
    base.Open Flight Application
    Click Sign In Button On Home Page
    signinPage.Input Username
    signinPage.Input Password
    signinPage.Click Sign In Button On Login Page