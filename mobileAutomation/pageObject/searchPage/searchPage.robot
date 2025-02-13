*** Settings ***
Resource            ../base/base.robot
Variables           ../searchPage/searchLocator.yaml
*** Keywords ***
Enter Valid Flight Number
    Wait Until Page Contains Element    locator=${flight_number_field}
    Input Text    locator=${flight_number_field}   text=DA935
Click Search Button On Search Page
    Click Element    locator=${search_btn_on_search}

Enter Invalid Flight Number 2 Characters
    Wait Until Page Contains Element    locator=${flight_number_field}
    Input Text    locator=${flight_number_field}   text=11

Without Input Flight Number
    Wait Until Page Contains Element        locator=${flight_number_field}
    Input Text                              locator=${flight_number_field}   text=

Input Wrong Flight Number
    Wait Until Page Contains Element        locator=${flight_number_field}
    Input Text                              locator=${flight_number_field}   text=DA934

Verify Error Message
    Wait Until Page Contains Element    locator=${error_toaster}
