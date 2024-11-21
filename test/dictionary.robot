*** Settings ***
Library  SeleniumLibrary
Library  Collection

*** Variables ***
&{search_text}  abc=books  bcd=travel

*** Test Cases ***
verify basic search functionalities for ebay
    [Documentation]  this test case verifies basic search
    [tags]  functional test

    Open Browser  https://www.ebay.com/  chrome

    input text  //input[@id="gh-ac"]  ${search_text.abc}
    Press Keys  //input[@id="gh-btn"]  Return
    Close Browser