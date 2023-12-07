*** Settings ***
Documentation       User can Add and Edit or Delete the Farmers.

Library             SeleniumLibrary
Resource            ../common.resource
Resource            ../locators/login_page.resource
Resource            ../locators/common_components.resource



*** Variables ***
#   Filters
${filters_button}           xpath://div[contains(text(),'Filter')]
${season_range}             xpath://div[contains(text(),'2022-2023')]
${sugarcane_filter}         xpath://div[contains(text(),'Sugarcane')]
${apply_filter_button}      xpath://div[contains(text(),'Apply Filter')]
${clear_filter_button}      xpath://div[contains(text(),'Clear Filter')]

#   Searching
${farmer_title_name}        xpath://h1[contains(text(),'Farmers')]
${farmers_search_bar}       xpath:/html/body/div[1]/div/div/div[1]/div/div[2]/div[1]/div/div[1]/div/div[2]
${farmer_search_input}      286139           #farmer id num for search
${search_result_click}      xpath:/html/body/div[1]/div/div/div[1]/div/div[2]/div[1]/div/div[2]/div/div/div[2]/div
${search_cross_icon}        xpath:/html/body/div[1]/div/div/div[1]/div/div[2]/div[1]/div/div[1]/div/div[2]/div[2]/div      #clear search bar cross icon

#   for Preview click on listing farmer
${click_first_listing_farmer}               xpath:/html/body/div[1]/div/div/div[1]/div/div[4]/div[1]/table/tbody/tr[1]
${preview_detail_visible}                   xpath:/html/body/div[1]/div/div/div[1]/div/div[4]/div[2]/div
${preview_edit_button}                      xpath:/html/body/div[1]/div/div/div[1]/div/div[4]/div[2]/div/div[1]/div[2]/div[1]
${preview_detail_page_cancel_button}        xpath://div[contains(text(),'Cancel')]
${confirm_button_farmer_edit_detail}        xpath://div[contains(text(),'Confirm')]


#   Export button for download the data
${farmers_export_button}                    xpath://div[contains(text(),'Export')]
${xlsx_file_select}                         xpath://div[contains(text(),'.xlsx')]
${farmer_download_button}                   xpath://div[contains(text(),'Download')]
${okay_button}                              xpath://div[contains(text(),'Okay')]




