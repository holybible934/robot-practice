import time

from PageObjectLibrary import PageObject


class VideoPage(PageObject):
    PAGE_TITLE = 'Twitch'
    PAGE_URL = '/videos/768214374'

    _locators = {
        'cancel_mute_button': 'xpath=//*[@id="__next"]/div/div/main/div/section[1]/div/div[2]/div/div/div'
    }

    def _is_current_page(self):
        location = self.selib.get_location()
        if not location.endswith(self.PAGE_URL):
            message = "Expected location to end with " + self.PAGE_URL + " but it did not"
            raise Exception(message)
        return True

    def find_cancel_mute_button(self):
        self.selib.find_element(self.locator.cancel_mute_button)
        time.sleep(5)
        self.driver.get_screenshot_as_file('./result.png')
