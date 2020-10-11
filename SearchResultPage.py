from PageObjectLibrary import PageObject


class SearchResultPage(PageObject):
    PAGE_TITLE = 'Twitch 搜尋 - MONSTER HUNTER WORLD'
    PAGE_URL = '/search?term=%20MONSTER%20HUNTER%20WORLD'

    _locators = {
        'watch_all_button': 'xpath=//*[@id="__next"]/div/div/main/div/div[2]/div/a/div/div[2]'
    }

    def click_watch_all_videos_list(self):
        self.selib.click_element(self.locator.watch_all_button)
