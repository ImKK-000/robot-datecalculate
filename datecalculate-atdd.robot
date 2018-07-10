*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Variables ****
${URL}    http://localhost:3000/web
${BROWSER}    chrome

*** Testcases ***
วันเริ่มต้น 4/1/2018 และวันสิ้นสุด 4/6/2018 ต้องได้วันห่างกัน 152 วัน
    Input Text    startDay    4
    Input Text    startMonth    1
    Input Text    startYear    2018
    Input Text    endDay    4
    Input Text    endMonth    6
    Input Text    endYear    2018
    Click Element    calculate
    Wait Until Page Contains    152 days

วันเริ่มต้น 25/3/1995 และวันสิ้นสุด 10/7/2018 ต้องได้วันห่างกัน 8509 วัน
    Input Text    startDay    25
    Input Text    startMonth    3
    Input Text    startYear    1995
    Input Text    endDay    10
    Input Text    endMonth    7
    Input Text    endYear    2018
    Click Element    calculate
    Wait Until Page Contains    8509 days