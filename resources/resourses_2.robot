*** Settings ***
Library    SeleniumLibrary
Variables    ..//resources/variables.py

*** Keywords ***
Open browser and Maximaze
    [Arguments]    ${user_url}    ${user_browser}
     open browser    ${user_url}    ${user_browser}
     maximize browser window
     log    Starting test in    ${browser_name}
     log    Test URL    ${url}

Close browser and Log
    close browser
    log    Finisheg test

Login to Web Page
    [Arguments]    ${user_name}    ${password}
    input text    id:user-name    ${user_name}
    input password    id:password    ${password}
    click button    id:login-button
    log    UserName    ${user_name}, Password    ${password}
    location should be    https://www.saucedemo.com/v1/inventory.html

Logout from Web Page
    click button    class:bm-burger-button
    wait until element is enabled    id:logout_sidebar_link
    click link    id:logout_sidebar_link
    log     Logout from webpage

Change Sorting Method
    [Arguments]    ${sorting_method}
    select from list by value    class:product_sort_container    ${sorting_method}

Add item in Cart


