*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGINDATA}      UserName=Admin    Password=admin123

*** Keywords ***
Login
    Input Text    id=txtUsername    @{CREDENTIALS}[0]
    Input Password    id=txtPassword    &{LOGINDATA}[Password]
    Click Button    id=btnLogin
