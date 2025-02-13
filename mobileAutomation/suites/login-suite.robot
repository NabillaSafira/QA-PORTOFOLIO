*** Settings ***
Resource             ../pageObject/homePage/homePage.robot
Resource             ../pageObject/signinPage/signinPage.robot

*** Test Cases ***
Login with Invalid Data
    base.Open Flight Application
    signinPage.Click Sign In Button On Home-Page
    Input Username
    signinPage.Input Password
    Click Sign In Button On Login Page
