*** Settings ***
Library     SeleniumLibrary
Library     DataDriver  C:/Code/robotFramework/resource/pageObject/testData/PatientData.xlsx      sheet_name=NPEF
Resource    C:/Code/robotFramework/test/patientData.robot
Resource    C:/Code/robotFramework/resource/pageObject/testData/PatientData.xlsx

############     Test case dependencies ##############
Test Template       Fill the new patient enrollment form
Test Setup          Begin Test
Test Teardown       Close Browser

*** Test Cases ***
TC_01_Data_driven_testing_of_patient_enrollment_form_using_excel
    Fill the new patient enrollment form

*** Keywords ***
Fill the new patient enrollment form
    [Arguments]    ${FIRST_NAME}     ${LAST_NAME}      ${MONTH}        ${DAY}    ${YEAR}     ${CONTACT_NUMBER}      ${SEX}       ${EMAIL}      ${MARITAL_STATUS_DROPDOWN}    ${ON_MEDS}

        input text    ${LOCATOR_FIRST_NAME}    ${FIRST_NAME}
        input text    ${LOCATOR_LAST_NAME}     ${LAST_NAME}
        sleep  5s
        set focus to element    ${LOCATOR_MONTH}
        click element     ${LOCATOR_MONTH}
        sleep  5s
        select from list by index    ${LOCATOR_MONTH}    ${MONTH}
        sleep  5s
        set focus to element    ${LOCATOR_DAY}
        click element     ${LOCATOR_DAY}
        select from list by index    ${LOCATOR_DAY}     ${DAY}
        sleep  3s
        set focus to element    ${LOCATOR_YEAR}
        click element     ${LOCATOR_YEAR}
        sleep  3s
        select from list by index    ${LOCATOR_YEAR}    ${YEAR}
        Continue filling the form - scroll again
       Continue filling the form - scroll once again


Continue filling the form - scroll again
    sleep    5s
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    set focus to element    ${LOCATOR_SEX}
    click element     ${LOCATOR_SEX}
    select from list by index    ${LOCATOR_SEX}    1
    set focus to element    ${LOCATOR_CONTACT_NUMBER}
    input text    ${LOCATOR_CONTACT_NUMBER}     1234567890
    set focus to element   ${LOCATOR_EMAIL}
    input text    ${LOCATOR_EMAIL}      reachparimi@gmail.com
Continue filling the form - scroll once again
    sleep    5s
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    set focus to element    ${LOCATOR_MARITAL_STATUS_DROPDOWN}
    click element     ${LOCATOR_MARITAL_STATUS_DROPDOWN}
    select from list by index    ${LOCATOR_MARITAL_STATUS_DROPDOWN}    2
    set focus to element    ${LOCATOR_MEDICAL_HISTORY_INPUT_BOX}
    INPUT TEXT      ${LOCATOR_MEDICAL_HISTORY_INPUT_BOX}    sample text
    CLICK BUTTON        ${LOCATOR_ENROLL_BUTTON}


Begin Test
    Open Browser    ${BASE_URL}     gc
    maximize browser window