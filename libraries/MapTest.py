from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common.by import By
from selenium.webdriver.remote.webelement import WebElement
from robot.api.logger import info, debug, trace, console
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time
from datetime import timedelta
from robot.libraries.BuiltIn import BuiltIn


# class MapTest:
#     def __init__(self) -> None:
#         self._session = None

def i_automate_the_map() -> None:
    # Get the SeleniumLibrary instance
    driver = BuiltIn().get_library_instance("SeleniumLibrary")

    info(driver)

    add_point_button = driver.find_element(
        "//div[contains(text(),'Add a point')]")

    info("Successfully find button")
    info(add_point_button)

    # add_point_button.click()
    # info("Waiting to click on add point button.")

    # element_to_click = driver.find_element(
    #     By.XPATH, "/html/body/div[5]/div/div[2]/div/div/div[2]/div[3]/div[1]")

    # info("Found the button.")

    # wait = WebDriverWait(driver, 10)

    # info("Wait until the button is clickable.")

    # wait.until(EC.element_to_be_clickable(
    #     (By.XPATH, "//div[contains(text(),'Add a point')]")))

    # info("Click on add point.")

    # element_to_click.click()
    # time.sleep(4)
    info(driver)

    info("Find map element")

    canvas_element = driver.find_element(
        '//*[@id="drawingMap"]/div[2]/canvas')

    info("Map element found")
    info(canvas_element)

    actions = ActionChains(driver)

    info("Moving map")

    actions.move_to_element(canvas_element)

    info("Moved")

    info("Click")

    actions.click_and_hold()

    info("Clicked")

    info("Move")

    actions.move_by_offset(10, 10)

    info("Moved")

    info("Release")

    actions.release()
    actions.perform()

    info("Release and Done moving")

    time.sleep(3)
    # add_point_button = driver.find_element(By.XPATH, "//div[contains(text(),'Add a point')]")
    # add_point_button.click()

    info("Finding another click element")

    element_to_click = driver.find_element(
        "//div[contains(text(),'Add a point')]")

    info("Element found")

    # info("Begin wait")

    # wait = WebDriverWait(driver, 10)

    # info("end wait")
    info("Wait for element to be clickable")

    driver.wait_until_element_is_enabled(element_to_click, timeout=timedelta(
        seconds=10), error="Add a point button can't be clicked")

    # wait.until(EC.element_to_be_clickable(
    #     (By.XPATH, "//div[contains(text(),'Add a point')]")))

    info("Element is now clickable")
    info("click")

    element_to_click.click()

    info("Sleep")
    time.sleep(4)
    info("sleep done")

    info("Find the map the final time")
    canvas_element = driver.find_element('//*[@id="drawingMap"]/div[2]/canvas')
    actions = ActionChains(driver)

    info("Move position")

    actions.move_to_element(canvas_element)

    info("Click and hold")

    actions.click_and_hold()

    info("Move mouse")

    actions.move_by_offset(100, -100)

    info("Release mouse")

    actions.release()
    # actions.perform()
    time.sleep(3)

    info("Finding another click element")

    element_to_click = driver.find_element(
        "//div[contains(text(),'Add a point')]")

    info("Element found")

    # info("Begin wait")

    # wait = WebDriverWait(driver, 10)

    # info("end wait")
    info("Wait for element to be clickable")

    driver.wait_until_element_is_enabled(element_to_click, timeout=timedelta(
        seconds=10), error="Add a point button can't be clicked")

    # wait.until(EC.element_to_be_clickable(
    #     (By.XPATH, "//div[contains(text(),'Add a point')]")))

    info("Element is now clickable")
    info("click")

    element_to_click.click()

    info("Sleep")
    time.sleep(4)
    info("sleep done")

    info("Find done button")

    finish_button = driver.find_element("//div[contains(text(),'Finish')]")

    info("Click done")

    finish_button.click()
    time.sleep(3)

    info("Click confirm")

    confirm_button = driver.find_element("//div[contains(text(),'Confirm')]")
    confirm_button.click()

    info("Done clicking")

    time.sleep(3)
