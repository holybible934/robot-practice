*** Settings ***
Documentation    Suite description
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${MOBILE TWITCH URL}    https://m.twitch.tv
${GAME TITLE}   MONSTER HUNTER WORLD


*** Keywords ***
Provided precondition
    Setup system under test