*** Settings ***
Documentation       DOM components that are available in the login flow.


*** Variables ***
${LANGUAGE_SELECT_MAIN}                 xpath:/html/body/div[1]/div/div/div[1]/div[2]/div

${LANGUAGE_SELECT_DROPDOWN}             xpath://body/div[@id='root']/div[1]/div[1]/div[1]/div[2]/div[1]/div[3]/div[2]/div[1]/div[1]
${LANGUAGE_SELECT_ENGLISH}              xpath://div[contains(text(),'English')]
${LANGUAGE_SELECT_NEXT}                 xpath://body/div[@id='root']/div[1]/div[1]/div[1]/div[2]/div[1]/div[3]/div[3]/div[1]

${LOGIN_OPTIONS_MAIN}                   xpath:/html/body/div[1]/div/div/div[1]/div[2]/div[1]

${LOGIN_SELECT_EMAIL_OPTION}            xpath://body/div[@id='root']/div[1]/div[1]/div[1]/div[2]/div[1]/div[3]/div[2]

${EMAIL_LOGIN_USERNAME_INPUT_LABEL}     xpath:/html/body/div[1]/div/div/div[1]/div[2]/div[1]/div[3]/div[1]/div[1]/div/div
${EMAIL_LOGIN_USERNAME_TEXT_FIELD}      xpath:/html/body/div[1]/div/div/div[1]/div[2]/div[1]/div[3]/div[1]/div[2]
${EMAIL_LOGIN_USERNAME_INPUT}           xpath://input[@id="username"]
${EMAIL_LOGIN_USERNAME_CONTINUE}        xpath:/html/body/div[1]/div/div/div[1]/div[2]/div[1]/div[3]/div[2]

${EMAIL_LOGIN_PASSWORD_INPUT_LABEL}     xpath:/html/body/div[1]/div/div/div[1]/div[2]/div/div[3]/div[1]/div[1]/div[1]/div
${EMAIL_LOGIN_PASSWORD_TEXT_FIELD}      xpath:/html/body/div[1]/div/div/div[1]/div[2]/div/div[3]/div[1]/div[2]
${EMAIL_LOGIN_PASSWORD_INPUT}           xpath:/html/body/div[1]/div/div/div[1]/div[2]/div/div[3]/div[1]/div[2]/input
${EMAIL_LOGIN_PASSWORD_CONTINUE}        xpath:/html/body/div[1]/div/div/div[1]/div[2]/div/div[3]/div[2]



