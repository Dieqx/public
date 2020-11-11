*** Settings ***
Library    SeleniumLibrary
Library    removeCharacters

*** Variables ***
${priceTextElement}    //li[@class="paramIconPrice"]

*** Keywords ***
Get Flat Price
    Wait Until Element Is Visible    ${priceTextElement}
    ${priceText}=    Get Text    ${priceTextElement}
    ${price}=    Drop Characters    ${priceText}
    [Return]  ${price}