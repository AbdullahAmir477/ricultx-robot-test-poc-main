*** Settings ***
Documentation       User can Open the Crop Finder

Library             SeleniumLibrary


*** Variables ***
#    Ricult Home icon
${Ricult_Home_Icon}                  xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[1]/div[1]/div/svg/path[1]
${CropFinder_side_bar}               xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[1]/div[5]/div/div
${CropFinder-Listing}                xpath://div[contains(text(),'Listing')]




