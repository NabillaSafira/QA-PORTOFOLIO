*** Settings ***
Resource        ../pageObject/base/base.robot
Resource        ../pageObject/homePage/homePage.robot
Resource        ../pageObject/searchPage/searchPage.robot
Resource        ../pageObject/SearchPage/validSearch-result.robot
Resource        ../pageObject/signinPage/signinPage.robot


*** Test Cases ***
Search with Valid Flight Number
    base.Open Flight Application
    homePage.Click Sign In Button On Home Page
    Input Username
    signinPage.Input Password
    Click Sign In Button On Login Page
    Verify User Is Succesfully Logged In
    Click Search Button On Home Page
    Enter Valid Flight Number
    Click Search Button On Search Page
    Verify the Flight Data Shown
    Close Flight Application
Search with Invalid Flight Number "Input with just 2 Characters"
    base.Open Flight Application
     homePage.Click Sign In Button On Home Page
    Input Username
    signinPage.Input Password
    Click Sign In Button On Login Page
    Verify User Is Succesfully Logged In
    Click Search Button On Home Page
    Enter Invalid Flight Number 2 Characters
    Click Search Button On Search Page
    Verify Error Message
    Close Flight Application

Search with Empty Flight Number
    base.Open Flight Application
    homePage.Click Sign In Button On Home Page
    Input Username
    signinPage.Input Password
    Click Sign In Button On Login Page
    Verify User Is Succesfully Logged In
    Click Search Button On Home Page
    Without Input Flight Number
    Click Search Button On Search Page
    Verify Error Message
    Close Flight Application

Search with Input Wrong Flight Number
    base.Open Flight Application
     homePage.Click Sign In Button On Home Page
    Input Username
    signinPage.Input Password
    Click Sign In Button On Login Page
    Verify User Is Succesfully Logged In
    Click Search Button On Home Page
    Input Wrong Flight Number
    Click Search Button On Search Page
    Verify Error Message
    Close Flight Application