*** Settings ***
Resource            ../base/base.robot

*** Keywords ***
Verify the Flight Data Shown
    Wait Until Page Contains    text="Toronto to Paris"
    Wait Until Page Contains    text="DA 935"
    Wait Until Page Contains    text="Schedule"
    Wait Until Page Contains    text="17:00"