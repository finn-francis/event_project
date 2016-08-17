Feature: User

  Scenario: A User signs up
    Given the user is on the sign up page
      And they fill in their details
    When they click the "Sign up" button
    Then they will see a notice saying "Thankyou for signing up!"

