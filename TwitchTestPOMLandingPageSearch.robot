*** Variables ***
${BROWSER}        Chrome
${MOBILE TWITCH URL}    https://m.twitch.tv
${GAME TITLE}   MONSTER HUNTER WORLD
${UPLOADER}     jeslotwolf

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
    the current page should be      LandingPage
    Maximize Browser Window
    Click Search Button
    Input Game Title    ${GAME TITLE}
    Send ENTER after Input

Go to Watch All Videos List Page from Search Result Page
    [Tags]    DEBUG
    [Documentation]     Go to Watch All Videos List Page from Search Result Page
    [Setup]     go to page      SearchResultPage
    the current page should be      SearchResultPage
    Click Watch All Videos List

Find The 1st MONSTER HUNTER WORLD Video of Specified Uploader then click it
    [Tags]    DEBUG
    [Documentation]     Find The 1st MONSTER HUNTER WORLD Video of Specified Uploader
    [Setup]     go to page      AllVideosListPage
    the current page should be      AllVideosListPage
    Scroll Down To The First Video      ${UPLOADER}

Watch Gameplay 5 seconds and Capture Screenshot
    [Tags]    DEBUG
    [Documentation]     Watch Gameplay 5 seconds and Capture Screenshot
    [Setup]     go to page      VideoPage
    Find Cancel Mute Button
