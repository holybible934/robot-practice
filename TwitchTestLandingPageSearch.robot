*** Settings ***
Documentation    Suite description
Resource    TwitchTestResource.robot

*** Test Cases ***
Use Chrome then search Monster Hunter World in Twitch
    [Tags]    DEBUG
    Open Browser    ${MOBILE TWITCH URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be     Twitch
    Click Search Button
    Input Game Title    ${GAME TITLE}
    Send ENTER after Input
    Wait Until Search Result Page is Loaded
    Title Should Be     Twitch 搜尋 - MONSTER HUNTER WORLD
    Go to All Videos List

    [Teardown]    Close Browser