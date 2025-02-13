*** Settings ***
Resource                               ../base/base.robot
Variables                              bookingLocator.yaml  

*** Keywords ***
Choose Type of Booking Flight
    Wait Until Element Is Visible                   locator=${round_trip_btn}
    Click Element                                   locator=${round_trip_btn}
Click Booking Button 
    Wait Until Element Is Visible                   locator=${booking_btn}
    Click Element                                   locator=${booking_btn}
Click Field From City
    Wait Until Element Is Visible                   locator=${from_city_field}
    Click Element                                   locator=${from_city_field}
    Wait Until Page Contains Element                locator=${from_city_picker}
    Click Element                                   locator=${from_city_picker}
Click Field To City
    Wait Until Element Is Visible                   locator=${to_city_field}
    Click Element                                   locator=${to_city_field}
    Wait Until Page Contains Element                locator=${to_city_picker}
    Click Element                                   locator=${to_city_picker}
Click Field To Status
    Wait Until Element Is Visible                   locator=${class_field}
    Click Element                                   locator=${class_field}
    Wait Until Page Contains Element                locator=${class_picker}
    Click Element                                   locator=${class_picker}
Click Field Start Date
    Wait Until Element Is Visible                   locator=${start_date_field}
    Click Element                                   locator=${start_date_field}
    Wait Until Page Contains Element                locator=${start_date_picker}
    Click Element                                   locator=${start_date_picker}
    Click Element                                   locator=${ok_btn}
Click Field End Date
    Wait Until Element Is Visible                   locator=${end_date_field}
    Click Element                                   locator=${end_date_field}
    Wait Until Page Contains Element                locator=${end_date_picker}
    Click Element                                   locator=${end_date_picker}
    Click Element                                   locator=${ok_btn}
Choose Radio Button
    Wait Until Page Contains Element                locator=${flight_and_hotel_btn}
    Click Element                                   locator=${flight_and_hotel_btn}
Choose Price
    Wait Until Page Contains Element                locator=${price_btn}
    Click Element                                   locator=${price_btn}
Click Book Button
    Wait Until Page Contains Element                locator=${book_btn}
    Click Element                                   locator=${book_btn}
Click Confirm Button
    Wait Until Element Is Visible                   locator=${confirm_btn}
    Click Element                                   locator=${confirm_btn}
    Wait Until Element Is Visible                   locator=${text}
    Get Text                                        locator=${text}