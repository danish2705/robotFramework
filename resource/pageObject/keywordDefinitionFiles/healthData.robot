*** Settings ***
Library     SeleniumLibrary
Library     DateTime
Library     RequestsLibrary
Library     Screenshot     ${SCREEN_SHOT_DIR}
Library     Collections
Library     String
*** Variables ***
# these are locators for the new patient enrollment form
${BASE_URL}                             https://form.jotform.com/202409063200136
${SCREEN_SHOT_DIR}                      C:/Code/robotFramework/resource/pageObject/testData
${LOCATOR_FIRST_NAME}                   //input[@id='first_3']
${LOCATOR_LAST_NAME}                    //input[@id='last_3']
${LOCATOR_MONTH}                        //select[@id='input_6_month']
${LOCATOR_MONTH_OPTION_BY_VALUE}        //select[@id='input_6_month']/option[${MONTH}]
${LOCATOR_DAY}                          //select[@id='input_6_day']
${LOCATOR_YEAR}                         //select[@id='input_6_year']
${LOCATOR_SEX}                          //select[@id='input_231']
${LOCATOR_CONTACT_NUMBER}               //input[@id='input_235_full']
${LOCATOR_EMAIL}                        //input[@id='input_225']
${LOCATOR_MARITAL_STATUS_DROPDOWN}      //select[@id='input_232']
${LOCATOR_EMERGENCY_FIRST_NAME}         //input[@id='first_13']
${LOCATOR_EMERGENCY_LAST_NAME}          //input[@id='last_13']
${LOCATOR_MEDICAL_HISTORY_INPUT_BOX}   //textarea[@id='input_22']
${LOCATOR_ENROLL_BUTTON}                //button[@id='input_2']