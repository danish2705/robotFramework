*** Settings ***
Documentation  Login  Functionality
Library  SeleniumLibrary
Library  SeleniumLibrary
*** Variables ***
${url}  https://form.jotform.com/202409063200136
${firstName}  rahul
${lastName}  roy
${month}  May
${day}  19
${year}  2004
${sex}  Male
${mobile}  1234567890
${email}  test@gmail.com
${marriage}  Single
${comment}  NA
*** Test Cases ***
Login Functionality
    [Documentation]    This test case verifies that user is able to successfully login.
    [Tags]    Smoke
    Open Browser    ${url}    Chrome
    Wait Until Element Is Visible    //input[@id="first_3"]    timeout=5
    Input Text    //input[@id="first_3"]    ${firstName}
    Input Text    //input[@id="last_3"]  ${lastName}
    Sleep  5s
    Click Element    //select[@id="input_6_month"]
    Select From List By Label    //select[@id="input_6_month"]    ${month}
    Click Element    //select[@id="input_6_day"]
    Select From List By Label    //select[@id="input_6_day"]    ${day}
    Click Element    //select[@id="input_6_year"]
    Select From List By Label    //select[@id="input_6_year"]    ${year}
    Wait Until Element Is Visible    //select[@id="input_231"]    timeout=5
    Select From List By Value    //select[@id="input_231"]    ${sex}
    Input Text    //input[@id="input_235_full"]  ${mobile}
    Input Text    //input[@id="input_225"]  ${email}
    Wait Until Element Is Visible    //select[@id="input_232"]    timeout=5
    Select From List By Value    //select[@id="input_232"]    ${marriage}
    Input Text    //textarea[@id="input_22"]  ${comment}
    Sleep  5s
    Click Element    //button[@id="input_2"]
    Sleep  5s

