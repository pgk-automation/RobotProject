*** Settings ***
Library    SeleniumLibrary
Suite Setup    log    Test suite preparation
Suite Teardown    Log    Test suite Tear down    
Default Tags    Sanity


#C:\Eclipse\eclipse-workspace\RobotProject1>robot -t Test1 Test2\Test3.robot
#C:\Eclipse\eclipse-workspace\RobotProject1>robot -i Sanity -i Smoke Test2\Test3.robot



*** Variables ***
${url}    https://appsrv1.unibiz.com/GAV6/R3.Web/Account/LogOn
${browser}     chrome
${userid}      login-user
${pwd}    login-password    
${lgn}    btnLogon
     
*** Keywords ***
LoginKW
    Input Text        id=${userid}    mantra
    Input Password    id=${pwd}    user1 
    Click Button      ${lgn}             



*** Test Cases ***
Test1
    [Tags]    Smoke
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Browser Implicit Wait    5
    LoginKW    
    Close Browser
    Log    Test complete

Test2
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Browser Implicit Wait    5
    LoginKW    
    Close Browser
    Log    Test complete
    
Test3
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Browser Implicit Wait    5
    LoginKW    
    Close Browser
    Log    Test complete