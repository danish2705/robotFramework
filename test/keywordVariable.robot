*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${VARIABLE_DEMO} =  This is a global variable

*** Test Cases ***
Test Case 1
    ${variable_demo} =  Set Variable  This is Test case variable
    Log  ${variable_demo}
Test Case 2
    Log  ${VARIABLE_DEMO}
Test Case 3
    This is demo keyword

*** Keywords ***
This is demo keyword
    [Arguments]   ${variable_demo}=This is keyword variable
    Log  ${VARIABLE_DEMO}

