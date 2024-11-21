*** Settings ***
Documentation  Login  Functionality
Library  SeleniumLibrary
*** Variables ***
*** Test Cases ***
Login Functionality
    [Documentation]    This test case verifies that user is able to successfully login.
    [Tags]    Smoke
    Open Browser    https://www.ebay.com/    Chrome
    Wait Until Element Is Visible    //input[@id='gh-ac']    timeout=5
    Input Text    //input[@id='gh-ac']    mobile
    Press Keys    //input[@id='gh-btn']  RETURN
    Wait Until Page Contains    results for mobile    timeout=5
#    Element Should Be Visible    css:[href="/logout"]    timeout=5
    Close Browser

*** Keywords ***