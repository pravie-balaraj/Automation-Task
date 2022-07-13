# Automation-Task
Freeletics

Task One Solution:

Instructions to run the task one Automation task code in command line:

*Install python 3
*Install Robot Framework by below command:
 pip install robotframework
*Install Selenium Library for Robot Framework:
pip install robotframework-SeleniumLibrary
*The SeleniumLibary is mandatory for automation testing with Selenium & Python using the Robot framework. SeleniumLibrary supports Python version 2.7, 3.4, or newer. This library is forked from Selenium2Library, hence you can also install the same library using the below command.
pip install robotframework-Selenium2Library

Once you have above requiements satisfied Clone the project repository.

Running the test scripts from command line tool:
Go to command line.
Navigate to the tests folder directory
Run the below command:
robot -d C:\MxAutomation\auto-test\results autotest_test.robot

"C:\MxAutomation\auto-test\results"  replace this with your exact results file location.


The automation tests for the task has been developed using Robot Framework, SeleniumLibrary for Robot Framework, and Chrome web driver.

Robot Framework Tests Structure:

I have developed tests in Robot Framework using the SeleniumLibrary and Chrome web driver and created POM (Page Object Model) for faster development and easier maintenance of our tests.

It consists of three folder views, steps and tests.

In the views we keep all elements of a single page. For example a file with name homepage.views will have all the home page elements are identified and objects are created.
In the task since I had one complete scenario I have located only the elements required for the automation of the task and stored in one single file autotest_views.robot

In the Steps folder, we can have files that contain keywords for functionalities on that page using the already created objects. 
For example, in the autotest_steps.robot file in the steps folder we have keywords for navigating to careers section and selecting QA position.
We also used the SeleniumLibrary in this file and imported the already created objects

And finally, the test folder where we are creating the tests using the already generated objects and keywords.
If there are multiple test case we can also create a test suite with suite setup and add multiple test cases to be execution inside the suite.

Also additionally we can have a commons and results folders where commons folder to have all the common generic info inside the common folder. For example, URL user credentials etc.
And results folder to have the test results stored.

Task 2 Solution:

1. To run the same test in Android phone, using the same chrome browser we need to have the below modifications:

Like Selenium, Appium also interacts with the Chrome browser using Chromedriver. Hence, you need to setup Chromedriver as well
Place the chromedriver.exe file in the Appium folder path as below:

appium>node_modules>appium-chromedriver>win

In the code we need to set the initial configuration to start the Appium session.
Desired Capabilities, Properties of Device and Browser are defined which can be done by creating a keywork to open the freeletics.com in chrome application in an Android phone for which we need to set the capabilities deviceName, platformName, Browser_Name, Version, RemoteWebDriver and URL

Now by just replacing the Open URL keyword with the above new Keyword we can run the tests in android chrome application.	

2. Before running the automation tests on mobile devices we should have below requirements satisfies:
Androis SDK installed
Appium installed
Android Home variables set
Path variables set

To run automation testing on a real device
Start your Android device.

Tap Settings, and then General About Device.

Tap the Build number seven times to enable Developer option in the software information section.

Return to the Settings menu and select Developer option.

Tap the Developer options to turn on USB Debugging from the menu on the next screen.

3. Appium comes with built-in hybrid support via Chromedriver, which allow the automation of any Chrome-backed Android web views.
If the website is part hybrid android app then One thing which is the most important is, we should have to enable debugging webview on our android apps and add code line, WebView.setWebContentsDebuggingEnabled(true); 

After this once you have set your desired capabilities and started an Appium session you can switch to webview or native app to automate by setting the contexts which we can access, like 'NATIVE_APP' or 'WEBVIEW_1' 

4. For native apps we have to use the appium inspector/UIAutomator Viewer to locate the element and create the objects in the views folder and we can reuse the keywords writte in our steps if we have similar steps and run our tests.

	 
