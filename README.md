# CHRIS_ANAJEMBA-NHSBSA

Pre-requisite
==============
Please, ensure you have java sdk and maven installed and configured in your machine without which you may face error messages in the build.

Run Test: 
===========
1. clone the framework "CHRIS_ANAJEMBA-NHSBSA" to your computer directory
2. open the folder "CHRIS_ANAJEMBA-NHSBSA", you should see three folders (.idea, src, target), pom.xml and a README.txt file
3. in an open space while in the folder, right-click to select a command prompt, terminal or git bash
4. 'mvn clean install' in the opened command prompt or terminal or git bash
5. be a little patients and wait for the test to run.

note: all files are in the "src" folder to view the simple BDD Framwork Design for this run.



Testing Approach:
==================
Environment Overview: Check what help you could get to pay for NHS costs.

A scenario where a user who is a full time student, 
below 18 years old and lives in England with no kids; has GP located outside Scotland or Wales as well as Dental Practice,
wants to know what help they can get to pay for NHS costs.

Functional Test: 
===================
Checks the functions on the UI for several pages included in the 
scenario decribed above for both happy and unhappy paths.

1. check what help you could get to pay for nhs costs
2. which country do you live in
3. is your gp practice located in scotland or wales
4. which country is your dental practice
5. what is your date of birth
6. are you in full-time education
7. you can get help with nhs costs

Accessibility Testing:
=======================
To verify if all UI components of the environment is displayed and can be accessed in a way
that meets with the WCAG 2.0 standards. Proposed tool to use for accessibility verifications
are:

1. Axe, Wave or Lighthouse
2. Any agreed way by the organisation in the current sprint
3. Screen reader (google extension)
4. Voice over (google extension)
5. Speech recorgnition testing (windows - dragon)

Compatibility Testing:
=========================
In line with the Government Digital Service Standards (GDS) for the environment in 
conjunction with NHSBSA standards for web and mobile applications, chrome and firefox is spelt
out for compatibility testing and hence the automation scenarios have been moduled to 
run on both chrome and firefox.
