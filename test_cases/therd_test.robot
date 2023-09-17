*** Settings ***
Library    SeleniumLibrary
Resource    ..//resources/resourses_2.robot
Variables    ..//resources/variables.py

*** Test Cases ***
Standart User Test Case
    [Setup]    Open browser and Maximaze    ${url}    ${browser_name}
    [Teardown]    Close browser and Log
    # log    Hello world
    Login to Web Page    ${standard_user}    ${password}
    Change Sorting Method    ${sort_hilo}
    Add item in Cart    id:item_4_title_link    xpath://*[@id="inventory_container"]/div/div[1]/div[3]/div    xpah://*[@id="inventory_container"]/div/div[1]/div[3]/button
    Open shopping Cart
    Checkout Shopping Cart
    # Logout from Web Page

Locked Out User Test Case
    [Setup]    Open browser and Maximaze    ${url}    ${browser_name}
    [Teardown]    Close browser and Log
    # log    Hello world
    Login to Web Page    ${locked_out_user}   ${password}
