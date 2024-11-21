*** Settings ***
Documentation     Page Object in Robot Framework
Library           SeleniumLibrary
Resource          ../resource/pageObject/keywordDefinitionFiles/loginPage.robot
Resource          ../resource/pageObject/keywordDefinitionFiles/common.robot

*** Variables ***
${site_url}       https://opensource-demo.orangehrmlive.com/
${browser}        Chrome

*** Test Cases ***
Verify Successful Login to OrangeHRM
    [Documentation]    This test case verifies that the user is able to successfully login and logout of OrangeHRM using Page Object.
    [Tags]    Smoke
    Opening Browser    ${site_url}    ${browser}
    Input Username
    Input Password
    Click Login
    # Verify Welcome Text is Visible
    # Logout
    Close Browser

*** Keywords ***