*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${firstSearchElement}    //*[@id="contentPage"]/div[1]/div/div/div/section/div[1]

*** Keywords ***
Click First Element
    Wait Until Element Is Visible    ${firstSearchElement}    10
    Click Element    ${firstSearchElement}