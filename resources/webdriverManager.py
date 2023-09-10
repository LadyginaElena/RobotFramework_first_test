from selenium import webdriver
from selenium.webdriver.chrome.service import Service as ChromeService
from webdriver_manager.chrome import ChromeDriverManager


def driver():
    driver_path = webdriver.Chrome(service=ChromeService(ChromeDriverManager().install()))
    return driver_path
