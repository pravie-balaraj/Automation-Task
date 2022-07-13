*** Settings ***
Library           Selenium2Library         
Resource          ../views/autotest_views.robot

*** Keywords ***
Open URL 
    Open Browser                                          ${URL}   ${BROWSER} 
    Maximize Browser Window
    Wait Until Element Is Visible                         ${accept_cookies}     20s
    Click Element                                         ${accept_cookies} 
    Title Should Be                                       ${page_title}

Go To Careers And Select QA Engineer 
    Wait Until Element Is Visible                         ${home_page}                    20s
    Execute JavaScript                                    window.scrollTo(0, document.body.scrollHeight)
    Click Element                                         ${careers}
    Wait Until Element Is Visible                         ${open_positions_title}     20s
    Click Element                                         ${open_positions_button} 
    Wait Until Element Is Visible                         ${qa_engineer_jobpost}      20s
    Scroll Element Into View                              ${qa_engineer_jobpost}
    Click Element                                         ${qa_engineer_jobpost}

Validate The Results
    Wait Until Element Is Visible                         ${job_title}
    Page Should Contain Element                           ${job_title}
    Page Should Contain Element                           ${role_description}
    Scroll Element Into View                              ${your_responsibilities}
    Element Text Should Be                                ${your_responsibilities}             Your Responsibilities
    Page Should Contain Element                           ${points_in_your_responsibilities}           limit=7
    Element Text Should Be                                ${your_profile}                      Your Profile
    Page Should Contain Element                           ${points_in_your_profile}           limit=6
    Scroll Element Into View                              ${applynow_button}
    Click Element                                         ${applynow_button}
    Switch Window                                         Freeletics - QA Engineer (all genders) - Remote or Munich
    Page Should Contain Element                           ${application_form_page}                   


    