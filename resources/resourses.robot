*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BrowserName}    Chrome
${UserURL}    https://www.saucedemo.com/v1


*** Keywords ***
Create Browser and Open and Maximaze
    [Arguments]    ${UserURL}    ${BrowserName}
    open browser    ${UserURL}    ${BrowserName}
    maximize browser window
    # log    Starting test with browser name    ${BrowserName}
    # log    Test URL  ${UserURL}


Login To Website
    [Arguments]    ${UserName}  ${Password}
    input text    id:user-name    ${UserName}
    input password    id:password    ${Password}
    click button    id:login-button
    page should not contain element    data-test:error
    element should contain    class:footer_copy    © 2020 Sauce Labs. All Rights Reserved. Terms of Service | Privacy Policy
