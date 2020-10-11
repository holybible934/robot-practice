*** Settings ***
Documentation    Suite description
Resource    TwitchTestResource.robot

*** Test Cases ***
Launch Chrome to Twitch
    [Tags]    DEBUG
    Open Browser    ${MOBILE TWITCH URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be     Twitch
    Click Search Button
    Input Game Title    ${GAME TITLE}
    Send ENTER after Input


*** Keywords ***
Provided precondition
    Setup system under test