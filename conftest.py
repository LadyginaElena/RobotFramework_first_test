from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.chrome.service import Service as ChromeService
import pytest


@pytest.fixture()
def browser():
    print("\nstart chrome browser for test..")
    #ChromeDriverManager(path=r".\test_cases").install()
    browser = webdriver.Chrome(service=ChromeService(ChromeDriverManager().install()))
    browser.implicitly_wait(15)

    yield browser
    print("\nquit browser..")
    browser.quit()