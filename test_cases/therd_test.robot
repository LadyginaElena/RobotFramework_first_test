*** Settings ***
Library    SeleniumLibrary
Resource    ..//resources/resourses_2.robot
Variables    ..//resources/variables.py

*** Test Cases ***
Therd test case
    [Setup]    Open browser and Maximaze    ${url}    ${browser_name}
    [Teardown]    Close browser and Log
    log    Hello world
    Login to Web Page    ${standard_user}    ${password}
    Change Sorting Method    ${sort_hilo}
    Logout from Web Page

