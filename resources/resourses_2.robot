*** Settings ***
Library    SeleniumLibrary
Variables    ..//resources/variables.py

*** Keywords ***
Open browser and Maximaze
    [Arguments]    ${user_url}    ${user_browser}
     open browser    ${user_url}    ${user_browser}
     maximize browser window
     # log    Starting test in    ${browser_name}
     # log    Test URL    ${url}

Close browser and Log
    close browser
    # log    Finisheg test

Login to Web Page
    [Arguments]    ${user_name}    ${password}
    input text    id:user-name    ${user_name}
    input password    id:password    ${password}
    click button    id:login-button
    # log    UserName    ${user_name}, Password    ${password}
    # location should be    https://www.saucedemo.com/v1/

Logout from Web Page
    click button    class:bm-item-list
    wait until element is enabled    id:logout_sidebar_link
    click link    id:logout_sidebar_link
    # log     Logout from webpage

Change Sorting Method
    [Arguments]    ${sorting_method}
    select from list by value    class:product_sort_container    ${sorting_method}

Add item in Cart
    [Arguments]    ${product_id}     ${product_price_id}    ${add_btn_id}
    ${product_name} =  get text    ${product_id}
    ${product_price} =    get text    ${product_price_id}
    # log     Product name:${product_name}
    # log     Product price:${product_price}
    click button    xpath://*[@id="inventory_container"]/div/div[1]/div[3]/button
    # Wait Until Element Is Visible    class:btn_secondary btn_inventory
    # Page Should Contain Element   class:btn_secondary btn_inventory

Open shopping Cart
    Click Link    class:shopping_cart_link
    set screenshot directory    ..//screenshorts
    capture element screenshot    class:cart_list

Checkout Shopping Cart
    Click Link    class:btn_action
    input text    id:first-name    Ivan
    input text    id:last-name    Ivanov
    input text    id:postal-code    123
    click button    class:btn_primary
    capture element screenshot    class:summary_info
    Click Link    class:btn_action
    page should contain    THANK YOU FOR YOUR ORDER






