*** Settings ***
Resource             ../pageObject/base/base.robot
Resource             ../pageObject/homePage/homePage.robot
Resource             ../pageObject/signinPage/signinPage.robot
Resource             ../pageObject/bookingPage/bookingPage.robot

*** Test Cases ***   
Fill All Field With Choose Price Data
    base.Open Flight Application
    homePage.Click Sign In Button On Home Page
    Input Username
    signinPage.Input Password
    Click Sign In Button On Login Page
    Click Booking Button 
    Click Field From City
    Click Field To City
    Click Field To Status
    Click Field Start Date
    Click Field End Date
    Choose Radio Button
    Click Book Button
    Choose Price
    Click Confirm Button
    Close Flight Application

Fill All Field and Didn't Choose Price Data
    base.Open Flight Application
    homePage.Click Sign In Button On Home Page
    Input Username
    signinPage.Input Password
    Click Sign In Button On Login Page
    Click Booking Button 
    Click Field From City
    Click Field To City
    Click Field To Status
    Click Field Start Date
    Click Field End Date
    Choose Radio Button
    Click Book Button
    Click Confirm Button
    Close Flight Application

Didn't Fill All Field and Choose Prices
    base.Open Flight Application
    homePage.Click Sign In Button On Home Page
    Input Username
    signinPage.Input Password
    Click Sign In Button On Login Page
    Click Booking Button
    Click Book Button
    Choose Price
    Click Confirm Button
    Close Flight Application

Didn't Fill All Field and Didn't Choose Price
    base.Open Flight Application
    homePage.Click Sign In Button On Home Page
    Input Username
    signinPage.Input Password
    Click Sign In Button On Login Page
    Click Booking Button
    Click Book Button
    Click Confirm Button
    Close Flight Application
