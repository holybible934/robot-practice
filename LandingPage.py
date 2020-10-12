from PageObjectLibrary import PageObject


class LandingPage(PageObject):
    PAGE_TITLE = 'Twitch'
    PAGE_URL = '/'

    _locators = {
        'search_button': 'xpath=//*[@id="__next"]/div/div/nav/div[2]/div[2]/button',
        'search_input': 'xpath=//*[@id="__next"]/div/div/nav/div[2]/div[2]/div/input'
    }

    def click_search_button(self):
        self.selib.click_element(self.locator.search_button)

    def input_game_title(self, game_title):
        self.selib.input_text(self.locator.search_input, game_title + '\n')
