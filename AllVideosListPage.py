import time

from PageObjectLibrary import PageObject


def uploader_exists_in_uploads(uploader, uploads):
    for j in range(len(uploads)):
        print('uploads[j] is ' + uploads[j].text)
        if uploads[j].text == uploader:
            return uploads[j]


class AllVideosListPage(PageObject):
    PAGE_TITLE = 'Twitch 搜尋 - MONSTER HUNTER WORLD'
    PAGE_URL = '/search?category=vods&term=%20MONSTER%20HUNTER%20WORLD'

    _locators = {
        'videos': 'css=p[class^=tw-c-text-alt-2]'
    }

    def _is_current_page(self):
        location = self.selib.get_location()
        if not location.endswith(self.PAGE_URL):
            message = "Expected location to end with " + self.PAGE_URL + " but it did not"
            raise Exception(message)
        return True

    def scroll_down_to_the_first_video(self, uploader, target=None):
        uploads = self.selib.find_elements(self.locator.videos)
        print(uploader)
        for i in range(50):
            if len(uploads) > 0:
                target = uploader_exists_in_uploads(uploader, uploads)
                self.driver.execute_script('arguments[0].scrollIntoView();', uploads[len(uploads) - 1])
                uploads = self.selib.find_elements(self.locator.videos)
                time.sleep(1)
            if target is not None:
                break
            else:
                return
        self.selib.find_element(target).click()
