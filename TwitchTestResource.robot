*** Settings ***
Documentation    Suite description
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${MOBILE TWITCH URL}    https://m.twitch.tv
${GAME TITLE}   MONSTER HUNTER WORLD


*** Keywords ***
Click Search Button
    Click Button    xpath=//*[@id="__next"]/div/div/nav/div[2]/div[2]/button

Input Game Title
    [Arguments]     ${GAME TITLE}
    Input Text  xpath=//*[@id="__next"]/div/div/nav/div[2]/div[2]/div/input     ${GAME TITLE}

Send ENTER after Input
    Press Key   xpath=//*[@id="__next"]/div/div/nav/div[2]/div[2]/div/input     \ue007
