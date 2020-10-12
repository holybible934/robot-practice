import time

from PageObjectLibrary import PageObject


class AllVideosListPage(PageObject):
    PAGE_TITLE = 'Twitch 搜尋 - MONSTER HUNTER WORLD'
    PAGE_URL = '/search?category=vods&term=%20MONSTER%20HUNTER%20WORLD'

    _locators = {
        'videos_list': 'xpath=//*[@id="__next"]/div/div/main/div/div/div[2]/div',
        'videos': 'css=p[class^=tw-c-text-alt-2]'
    }

    def _is_current_page(self):
        location = self.selib.get_location()
        if not location.endswith(self.PAGE_URL):
            message = "Expected location to end with " + self.PAGE_URL + " but it did not"
            raise Exception(message)
        return True

    def scroll_down_to_the_first_video(self, uploader):
        videos = self.selib.find_elements(self.locator.videos)
        for i in range(5):
            if len(videos) > 0:
                for j in range(len(videos)):
                    print(videos[j].text)
                print('-------------------')
                self.driver.execute_script('arguments[0].scrollIntoView();', videos[len(videos) - 1])
                videos = self.selib.find_elements(self.locator.videos)
                time.sleep(1)
