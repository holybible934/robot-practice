*** Settings ***
Documentation    Suite description
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${MOBILE TWITCH URL}    https://m.twitch.tv
${GAME TITLE}   MONSTER HUNTER WORLD
${UPLOADER}     inokulant

*** Keywords ***
# Actions of Landing Page Search
Click Search Button
    Click Button    xpath=//*[@id="__next"]/div/div/nav/div[2]/div[2]/button

Input Game Title
    [Arguments]     ${GAME TITLE}
    Input Text  xpath=//*[@id="__next"]/div/div/nav/div[2]/div[2]/div/input     ${GAME TITLE}

Send ENTER after Input
    Press Keys   xpath=//*[@id="__next"]/div/div/nav/div[2]/div[2]/div/input     \ue007

# Actions of Search Result Page
Wait Until Search Result Page is Loaded
    Wait Until Page Contains Element    xpath=//*[@id="__next"]/div/div/main/div/div[3]/div/a/div/div[2]

Go to All Videos List
    Click Element    xpath=//*[@id="__next"]/div/div/main/div/div[3]/div/a/div/div[2]
