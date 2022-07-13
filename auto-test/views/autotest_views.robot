*** Settings ***
Library           Selenium2Library


*** Variables ***
${BROWSER}                                Chrome
${URL}                                    https://www.freeletics.com
${page_title}                             Intensive workouts & individual training plans | FREELETICS
${accept_cookies}                         //span[contains(text(), 'Accept all cookies')]
${home_page}                              //a[@class='rhUWUvAEgD1Z ']
${careers}                                //ul[@class='ljBmczspopnO']//span[contains(text(), 'Careers')]
${open_positions_title}                   //span[contains(text(), 'Together we become our best')] 
${open_positions_button}                  //a[@class='AisLsJaE_AWn xK8HVPyWXV90 eG_BJQQLdVcX ']//span
${qa_engineer_jobpost}                    //a[contains(text(), 'QA Engineer (all genders) - Remote or Munich')]
${job_title}                              //h1[contains(text(), 'QA Engineer (all genders) - Remote or Munich')]
${role_description}                       //section[@itemprop='description']
${your_responsibilities}                  //h2[contains(text(), 'Your Responsibilities')]
${points_in_your_responsibilities}        //section[@itemprop='responsibilities']//ul//li
${your_profile}                           //h2[contains(text(), 'Your Profile')] 
${points_in_your_profile}                 //section[@itemprop='experienceRequirements']//ul//li
${applynow_button}                        //span[contains(text(), 'Apply now')] 
${application_form_page}                  //h4[contains(text(), 'Submit your application')] 
