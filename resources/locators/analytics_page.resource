*** Settings ***
Documentation       User can Open the Analytics Page

Library             SeleniumLibrary


*** Variables ***
#    Ricult Home icon
${Ricult_Home_Icon}                  xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[1]/div[1]/div/svg/path[1]
${Analytics_side_bar}                xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[1]/div[4]/div/div

${Overview}                          xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[2]/div[2]/div
${Crop_Health_Monitoring}            xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[2]/div[3]/div
${Harvest_Yield_Progress}            xpath:/html/body/div[1]/div/div/div[2]/div[2]/div/div/div[2]/div[4]/div






