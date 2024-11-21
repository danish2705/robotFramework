*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${VARIABLE_DEMO} =  This is a global variable

*** Test Cases ***
Test Case 1
    Log  ${VARIABLE_DEMO}
Test Case 2
    Log  ${VARIABLE_DEMO}