*** Settings ***
Library  SeleniumLibraray
Variables  ../locators/locators.py
Variables  ../testData/testData.py

*** Keywords ***
Opening Browser
    [Arguments]  ${site_url}  ${browser}
    Open Browser  ${site_url}  ${browser}
    Wait Until Element Is Visible  ${LoginUsernameInputBox}  timeout=5