*** Settings ***
Library           Selenium2Library
Library           OperatingSystem
Resource          ../views/autotest_views.robot
Resource          ../steps/autotest_steps.robot

*** Test Cases ***
Automation Task Test Scenario
    Open URL
    Go To Careers And Select QA Engineer 
    Validate The Results