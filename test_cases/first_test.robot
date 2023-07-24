*** Settings ***
Library    SeleniumLibrary
Resource    ..//resources/resourses.robot

*** Variables ***
${Browser}    Chrome
${URL}    https://www.saucedemo.com/v1
${StandardUser}    standard_user
${Password}    secret_sauce
${LockedOutUser}    locked_out_user

*** Test Cases ***
My First Test Case
    [Setup]    Open Browser and Maximaze    ${URL}    ${Browser}
    [Teardown]    close browser
    Login To Website    ${StandardUser}    ${Password}
    ${Title} =    get title
    #log  page title is    ${Title}
    ${Cookies}=    get cookies
    #log    ${Cookies}
    wait until element is visible    id:item_1_img_link
    capture element screenshot    id:item_1_img_link
    scroll element into view    class:footer_copy
    wait until element is visible    class:footer_copy
    capture page screenshot
    set screenshot directory    ../screenshots



# robot test_cases\first_test.robot
