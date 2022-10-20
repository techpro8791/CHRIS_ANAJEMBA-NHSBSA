Feature:
  As a citizen of the UK
  I need to know what help I can get with my NHS costs
  So that I can get the treatment I need

  @happy_path
  Scenario Outline: as a young resident in england below eighteen I need to know what help I can get with my NHS cost So that I can get the treatment I need
    Given I launch the "<checker tool>" in "<browser>" type
    And I verify the "check what help you could get to pay for nhs costs" page "title"
    When I click the "start now" button on "check what help you could get to pay for nhs costs" page
    And I verify the "which country do you live in" page "title"
    And I click the "england" radio button on "which country do you live in" page
    And I click the "next" button on "which country do you live in" page
    And I verify the "is your gp practice located in scotland or wales" page "title"
    And I click the "no" radio button on "is your gp practice located in scotland or wales" page
    And I click the "next" button on "is your gp practice located in scotland or wales" page
    And I verify the "which country is your dental practice" page "title"
    And I click the "england" radio button on "which country is your dental practice" page
    And I click the "next" button on "which country is your dental practice" page
    And I verify the "what is your date of birth" page "title"
    And I fill the "day" text field on "what is your date of birth" page with "11"
    And I fill the "month" text field on "what is your date of birth" page with "08"
    And I fill the "year" text field on "what is your date of birth" page with "2005"
    And I click the "next" button on "what is your date of birth" page
    And I verify the "are you in full-time education" page "title"
    And I click the "yes" radio button on "are you in full-time education" page
    And I click the "next" button on "are you in full-time education" page
    Then I verify the "you can get help with nhs costs" page "title"
    And I should verify "free nhs prescription" text on "you can get help with nhs costs" page as "NHS prescriptions"
    And I should verify "free nhs dental check-ups and treatment" text on "you can get help with nhs costs" page as "NHS dental check-ups and treatment"
    And I should verify "free sight tests" text on "you can get help with nhs costs" page as "sight tests"
    And I should verify "free wigs and fabric supports" text on "you can get help with nhs costs" page as "NHS wigs and fabric supports"
    And I should verify "money off new glasses or contact lenses" text on "you can get help with nhs costs" page as "new glasses or contact lenses"
    And I should verify "money off repairing or replacing your glasses or contact lenses" text on "you can get help with nhs costs" page as "repairing or replacing your glasses or contact lenses"
    And I should verify "£4.25 10th weeks pregnant" text on "you can get help with nhs costs" page as "£4.25 each week of your pregnancy from the 10th week"
    And I should verify "£8.50 if I have children less than 1 year old" text on "you can get help with nhs costs" page as "£8.50 each week for children from birth to 1 year old"
    And I should verify "£4.25 if I have children between 1 and 4 years old" text on "you can get help with nhs costs" page as "£4.25 each week for children between 1 and 4 years old"
    And I should verify "free vitamin supplements" text on "you can get help with nhs costs" page as "You could also get free vitamin supplements."

    Examples:
      | checker tool                                                         | browser |
      | https://services.nhsbsa.nhs.uk/check-for-help-paying-nhs-costs/start | chrome  |

  @unhappy_path
  Scenario Outline: as a user, I want to verify if I can proceed to the next page without selecting an option on which country do you live in so that I can verify error message
    Given I launch the "<checker tool>" in "<browser>" type
    And I verify the "check what help you could get to pay for nhs costs" page "title"
    When I click the "start now" button on "check what help you could get to pay for nhs costs" page
    And I verify the "which country do you live in" page "title"
    And I click the "next" button on "which country do you live in" page
    Then I should verify "error message" text on "which country do you live in" page as "Select the country you live in"


    Examples:
      | checker tool                                                         | browser |
      | https://services.nhsbsa.nhs.uk/check-for-help-paying-nhs-costs/start | chrome  |

  @unhappy_path
  Scenario Outline: as a user, I want to verify if I can proceed to the next page without selecting an option on which country do you live in so that I can verify error message
    Given I launch the "<checker tool>" in "<browser>" type
    And I verify the "check what help you could get to pay for nhs costs" page "title"
    When I click the "start now" button on "check what help you could get to pay for nhs costs" page
    And I verify the "which country do you live in" page "title"
    And I click the "england" radio button on "which country do you live in" page
    And I click the "next" button on "which country do you live in" page
    And I verify the "is your gp practice located in scotland or wales" page "title"
    And I click the "no" radio button on "is your gp practice located in scotland or wales" page
    And I click the "next" button on "is your gp practice located in scotland or wales" page
    And I verify the "which country is your dental practice" page "title"
    And I click the "england" radio button on "which country is your dental practice" page
    And I click the "next" button on "which country is your dental practice" page
    And I verify the "what is your date of birth" page "title"
    And I fill the "day" text field on "what is your date of birth" page with "11"
    And I fill the "month" text field on "what is your date of birth" page with ""
    And I fill the "year" text field on "what is your date of birth" page with "2005"
    And I click the "next" button on "what is your date of birth" page
    Then I should verify "error message" text on "what is your date of birth" page as "Enter your date of birth"

    Examples:
      | checker tool                                                         | browser |
      | https://services.nhsbsa.nhs.uk/check-for-help-paying-nhs-costs/start | chrome  |

  @smoke
  Scenario Outline: as a young resident in england below eighteen I need to know what help I can get with my NHS cost So that I can get the treatment I need
    Given I launch the "<checker tool>" in "<browser>" type
    And I verify the "check what help you could get to pay for nhs costs" page "title"
    When I click the "start now" button on "check what help you could get to pay for nhs costs" page
    And I verify the "which country do you live in" page "title"
    And I click the "england" radio button on "which country do you live in" page
    And I click the "next" button on "which country do you live in" page
    And I verify the "is your gp practice located in scotland or wales" page "title"
    And I click the "no" radio button on "is your gp practice located in scotland or wales" page
    And I click the "next" button on "is your gp practice located in scotland or wales" page
    And I verify the "which country is your dental practice" page "title"
    And I click the "england" radio button on "which country is your dental practice" page
    And I click the "next" button on "which country is your dental practice" page
    And I verify the "what is your date of birth" page "title"
    And I fill the "day" text field on "what is your date of birth" page with "11"
    And I fill the "month" text field on "what is your date of birth" page with "08"
    And I fill the "year" text field on "what is your date of birth" page with "2005"
    And I click the "next" button on "what is your date of birth" page
    And I verify the "are you in full-time education" page "title"
    And I click the "yes" radio button on "are you in full-time education" page
    And I click the "next" button on "are you in full-time education" page
    Then I verify the "you can get help with nhs costs" page "title"
    And I should verify "free nhs prescription" text on "you can get help with nhs costs" page as "NHS prescriptions"
    And I should verify "free nhs dental check-ups and treatment" text on "you can get help with nhs costs" page as "NHS dental check-ups and treatment"
    And I should verify "free sight tests" text on "you can get help with nhs costs" page as "sight tests"
    And I should verify "free wigs and fabric supports" text on "you can get help with nhs costs" page as "NHS wigs and fabric supports"
    And I should verify "money off new glasses or contact lenses" text on "you can get help with nhs costs" page as "new glasses or contact lenses"
    And I should verify "money off repairing or replacing your glasses or contact lenses" text on "you can get help with nhs costs" page as "repairing or replacing your glasses or contact lenses"
    And I should verify "£4.25 10th weeks pregnant" text on "you can get help with nhs costs" page as "£4.25 each week of your pregnancy from the 10th week"
    And I should verify "£8.50 if I have children less than 1 year old" text on "you can get help with nhs costs" page as "£8.50 each week for children from birth to 1 year old"
    And I should verify "£4.25 if I have children between 1 and 4 years old" text on "you can get help with nhs costs" page as "£4.25 each week for children between 1 and 4 years old"
    And I should verify "free vitamin supplements" text on "you can get help with nhs costs" page as "You could also get free vitamin supplements."

    Examples:
      | checker tool                                                         | browser |
      | https://services.nhsbsa.nhs.uk/check-for-help-paying-nhs-costs/start | firefox |