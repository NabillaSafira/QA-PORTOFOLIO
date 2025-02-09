*** Settings ***
Library    AppiumLibrary

*** Variables ***
${remote_url}      http://localhost:4723/wd/hub
${plateform_name}  Android
${device_name}     11e4f62e
${app_package}     com.example.myapplication
${app_activity}    com.example.myapplication.MainActivity
${username}        UserTest
${password}        123

*** Keywords ***
Open Flight Application
    Open Application    
    ...    ${remote_url}    
    ...    platformName=${plateform_name}    
    ...    appium:deviceName=${device_name}    
    ...    appium:appPackage=${app_package}    
    ...    appium:appActivity=${app_activity} 

Click Sign in Button on Home Page
    Click Element    //android.widget.Button[@resource-id="com.example.myapplication:id/login"]

Input Username
    Input Text    //android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    ${username}

Input Password
    Input Text    //android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    ${password}

Click Sign in Button on Login Page
    Click Element    //android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify User is Successfully Login
    Wait Until Element Is Visible    //android.widget.TextView[@text="Welcome"]    timeout=5s

Close Flight Application
    Close Application

*** Test Cases ***
Login with Valid Data
    Open Flight Application
    Click Sign in Button on Home Page
    Input Username
    Input Password
    Click Sign in Button on Login Page
    Verify User is Successfully Login
    Close Flight Application
