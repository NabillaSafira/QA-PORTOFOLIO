*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}      http://localhost:4723/wd/hub
${PLATFORM_NAME}   Android
${DEVICE_NAME}     11e4f62e
${APP_PACKAGE}     com.example.myapplication
${APP_ACTIVITY}    com.example.myapplication.MainActivity
${USERNAME}        UserTest
${PASSWORD}        123

*** Keywords ***
Open Flight Application
    Open Application    
    ...    ${REMOTE_URL}    
    ...    platformName=${PLATFORM_NAME}    
    ...    appium:deviceName=${DEVICE_NAME}    
    ...    appium:appPackage=${APP_PACKAGE}    
    ...    appium:appActivity=${APP_ACTIVITY} 

Click Sign in Button on Home Page
    Click Element    //android.widget.Button[@resource-id="com.example.myapplication:id/login"]

Input Username
    Input Text    //android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    ${USERNAME}

Input Password
    Input Text    //android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    ${PASSWORD}

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
