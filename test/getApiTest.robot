*** Settings ***
Library  RequestsLibrary

*** Test Cases ***
Quick Get Request Test
    ${response} =  GET  http://www.google.com
