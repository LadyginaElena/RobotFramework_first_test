*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://demoqa.com/automation-practice-form
${Browser}    Chrome

*** Test Cases ***
My Second Test Case
    open browser    ${URL}    ${Browser}
    maximize browser window
    sleep    3
    select radio button    gender   Female
    select checkbox    class:custom-control-input    Reading


# robot test_cases\second_test.robot