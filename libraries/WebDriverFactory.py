from robot.api.logger import info, debug, trace, console

from selenium import webdriver

from selenium.webdriver.chrome.service import Service as ChromeService
from selenium.webdriver.chrome.options import Options as ChromeOptions
from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.core.os_manager import ChromeType

from selenium.webdriver.edge.service import Service as EdgeService
from webdriver_manager.microsoft import EdgeChromiumDriverManager

from selenium.webdriver.firefox.service import Service as FirefoxService
from webdriver_manager.firefox import GeckoDriverManager


class WebDriverFactory:
    def get_chrome_options(self):
        options = ChromeOptions()
        options.add_argument("test-type")
        options.add_argument("--disable-extensions")
        options.add_argument("--headless")
        options.add_argument("--disable-gpu")
        options.add_argument("--no-sandbox")
        return options

    def get_chrome_driver_service(self):
        service = ChromeService(ChromeDriverManager().install())
        return service

    def get_chromium_driver_path(self):
        driver = webdriver.Chrome(service=ChromeService(
            ChromeDriverManager(chrome_type=ChromeType.CHROMIUM).install()))
        return driver

    def get_edge_driver_path(self):
        driver = webdriver.Edge(service=EdgeService(
            EdgeChromiumDriverManager().install()))
        return driver

    def get_firefox_path(self):
        driver = webdriver.Firefox(
            service=FirefoxService(GeckoDriverManager().install()))
        return driver
