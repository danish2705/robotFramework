*** Settings ***
Documentation  Login  Functionality
Library  SeleniumLibrary
*** Variables ***
*** Test Cases ***
Login Functionality
    [Documentation]    This test case verifies that user is able to successfully login.
    [Tags]    Smoke
    Open Browser    https://the-internet.herokuapp.com/login    Chrome
    Wait Until Element Is Visible    id:username    timeout=5
    Input Text    id:username    tomsmith
    Input Password    id:password    SuperSecretPassword!
    Click Element    css:button[type="submit"]
    Element Should Be Visible    css:[href="/logout"]    timeout=5
    Close Browser

*** Keywords ***