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
Search MONSTER HUNTER WORLD in Twitch Landing Page
    [Tags]    DEBUG
    [Documentation]     Search MONSTER HUNTER WORLD videos in Twitch Landing Page
    [Setup]     go to page      LandingPage
    Maximize Browser Window
    Click Search Button
    Input Game Title    ${GAME TITLE}
    Send ENTER after Input


Go to Watch All Videos List Page from Search Result Page
    [Tags]    DEBUG
    [Documentation]     Go to Watch All Videos List Page from Search Result Page
    [Setup]     go to page      SearchResultPage
#    Title Should Be     ${CURRENT PAGE TITLE}
    the current page should be      SearchResultPage
    Click Watch All Videos List

