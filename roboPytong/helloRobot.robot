*** Settings ***
Library    SeleniumLibrary
Library    removeCharacters
Resource    Objects/mainPage.robot
Resource    Objects/searchResultPage.robot
Resource    Objects/listElementPage.robot

*** Test Cases ***
FirstSeleniumTest
    Open Browser    https://www.morizon.pl    ff
    mainPage.Wait For Cookies Popup And Close
    mainPage.Input City
    mainPage.Change Price
    mainPage.Submit
    searchResultPage.Click First Element
    ${price}=    listElementPage.Get Flat Price
    Should Be True    ${price}>200000
    Should Be True    ${price}<250000
    Close Browser
