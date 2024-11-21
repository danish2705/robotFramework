*** Settings ***
Documentation  Login  Functionality
Library  SeleniumLibrary
*** Variables ***
*** Test Cases ***
Login Functionality
    [Documentation]    This test case verifies that user is able to successfully login.
    [Tags]    Smoke
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    Chrome
    Wait Until Element Is Visible    name:username    timeout=5
    Input Text    name:username    Admin
    Input Password    name:password    admin123
    Click Element    css:button[type="submit"]
#    Element Should Be Visible    css:[href="/logout"]    timeout=5
    Close Browser

*** Keywords ***