Feature: User

  Scenario: A User signs up
    Given the user is on the sign up page
      And they fill in their details
    When they click the "Sign up" button
    Then they will see a notice saying "Thankyou for signing up!"

  Scenario: A User responds to an invite to an event
    Given there are two users
      And there is an event
      And the User is signed up
      And they are signed in
      And they are on the homepage
      And they have an invite
    When they click on the invite
      And they click the "Accept" button
    Then they will be redirected to the event
      And they will see a notice saying "Thankyou for signing up!"
