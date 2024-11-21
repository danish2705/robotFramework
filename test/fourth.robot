*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Username}                    danishmeraj06@gmail.com
${Password}                    wrongpass
${Browser}                     Chrome
${SiteUrl}                     https://www.linkedin.com/login
${DashboardTitle}              LinkedIn Login, Sign in | LinkedIn
${ExpectedWarningMessage}      Wrong email or password.
${WarningMessage}              Login Failed!
${Delay}                       5s

*** Test Cases ***
Login Should Fail With Unregistered Mail Address
    Open LinkedinPage
    Check Title
    Enter User Name
    Enter Wrong Password
    Click Login
    Sleep    ${Delay}
    Assert Warning Message
    Close Browser

*** Keywords ***
Open LinkedinPage
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window

Enter User Name
    Input Text    //input[@id="username"]    ${Username}

Enter Wrong Password
    Input Text    //input[@id="password"]    ${Password}

Click Login
    Click Button    //button[normalize-space()="Sign in"]

Check Title
    Title Should Be    ${DashboardTitle}

Assert Warning Message
    Element Text Should Be    //div[@id="error-for-password"]    ${ExpectedWarningMessage}

Close Browser
    Close Browser