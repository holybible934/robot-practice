# robot-practice
Robot Framework Practice
使用Robot framework和Selenium，寫一個依照page object pattern結構的test script
Test Case如下：
以https://www.twitch.tv/ 為例，在手機瀏覽器下，進去首頁後，從搜尋框輸入 “Monster Hunter World”，
然後從結果的過去影片中找尋第一筆使用者為CervelloneRe 的影片 (如果找不到，挑一個使用者名稱，至少需要往下延伸list兩三次的)，
進去播放5秒後截圖，確認有播放。 
