*** Settings ***
Library    SeleniumLibrary
Resource    ..//resources/resourses.robot

*** Variables ***
${Browser}    Firefox
${URL}    https://www.saucedemo.com/v1
${StandardUser}    standard_user
${Password}    secret_sauce
${LockedOutUser}    locked_out_user

*** Test Cases ***
My First Test Case
    Open Browser and Maximaze    ${URL}    ${Browser}
    Login To Website    ${StandardUser}    ${Password}
    go back
    close browser


# robot test_cases\first_test.robot
