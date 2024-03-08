# Robot Framework 
### A keyword-driven test automation framework used for acceptance testing and acceptance test-driven development (ATDD). It's easy to learn for those new to automation and powerful enough for advanced users. It utilizes tabular test data syntax and it's operating system and application independent.

For example, we'll use the Robot Framework to interact with a demo web application, such as "The Internet" by Heroku (https://the-internet.herokuapp.com/), which is often used for practice and learning automation testing. This website provides various web pages for testing, including login pages, checkboxes, dropdowns, and more.

## Step 1: Installation
Ensure you have Python installed on your machine. Then, install Robot Framework and SeleniumLibrary, which is a web testing library for Robot Framework that utilizes the Selenium tool internally. You can install them using pip:
- pip install robotframework
- pip install robotframework-seleniumlibrary

## Step 2: Writing a Test Script
Download a file named login_test.robot and open it in your favorite text editor. This script tests the login functionality of the demo application.
This script performs the following actions:
- Opens the Chrome browser (make sure you have Chrome installed and the chromedriver in your PATH).
- Navigates to the login page of the demo application.
- Enters a username and password.
- Clicks the login button.
- Checks that the page contains the text "You logged into a secure area!" indicating a successful login.
- Closes the browser.

## Step 3: Running the Test
To run the test, open your terminal, navigate to the directory containing your login_test.robot file, and run the following command:
- robot login_test.robot
- The Robot Framework will execute the test case in the login_test.robot file, open the Chrome browser, and perform the actions defined in the test case. After the test is complete, it will generate a report and a log in HTML format in the same directory.

## Additional Notes
- Ensure you have Google Chrome and ChromeDriver installed. ChromeDriver is required for SeleniumLibrary to interact with Chrome.
- You might need to adjust the ${BROWSER} variable if you're using a different browser.
- Explore other files of this repository and functionalities of the demo website to practice writing more test cases.

#### This example provides a basic introduction to using Robot Framework for web testing. As you become more comfortable, try expanding your test cases to cover more complex scenarios and explore Robot Framework's extensive documentation and community resources for deeper learning.
