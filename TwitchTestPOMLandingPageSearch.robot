*** Variables ***
${BROWSER}        Chrome
${MOBILE TWITCH URL}    https://m.twitch.tv
${GAME TITLE}   MONSTER HUNTER WORLD
${CURRENT PAGE TITLE}       Twitch

*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Library     PageObjectLibrary
Resource    TwitchTestResource.robot
Suite Setup   Open browser  ${MOBILE TWITCH URL}    ${BROWSER}
Suite Teardown  Close all browsers


*** Test Cases ***
Use Chrome then search MONSTER HUNTER WORLD in Twitch
    [Tags]    DEBUG
    [Documentation]     Search MONSTER HUNTER WORLD videos in Twitch Landing Page
    [Setup]     go to page      LandingPage
    Title Should Be     ${CURRENT PAGE TITLE}
    Maximize Browser Window
    Click Search Button
    Input Game Title    ${GAME TITLE}
    Send ENTER after Input
    Wait Until Search Result Page is Loaded
#    Title Should Be     Twitch 搜尋 - MONSTER HUNTER WORLD
#    Go to All Videos List

    [Teardown]    Close Browser