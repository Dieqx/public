*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${cookiesPopupAgreeButton}    //button[contains(.,'ZGADZAM')]
${inputLocationText}    //*[@id="ps_location_text"]
${city}    Wroclaw
${priceDropdown}    //*[@id="ps_price"]
${priceFrom}    //*[@id="ps_price_from"]
${priceFromValue}    200000
${priceTo}    //*[@id="ps_price_to"]
${priceToValue}    250000
${submitButton}    name:commit

*** Keywords ***
Wait For Cookies Popup And Close
    Wait Until Element Is Visible    ${cookiesPopupAgreeButton}
    Click Element    ${cookiesPopupAgreeButton}
    
Input City
    Input Text    ${inputLocationText}    ${city}
    
Change Price
    Click Element    ${priceDropdown}
    Input Text    ${priceFrom}    ${priceFromValue}
    Input Text    ${priceTo}   ${priceToValue}
    
Submit
    Click Element   ${submitButton}