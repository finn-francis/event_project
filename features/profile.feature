Feature: Profile

  Background:
    Given the user is on the sign up page
      And they fill in their details
    When they click the "Sign up" button

  Scenario: A User edits their name on their profile
    Given the user clicks the "Edit Profile" link
    When they enter their profile details
      And they click the "Save" button
    Then the profile edits will be saved

  Scenario: A User views their profile page
    Given they have filled in their profile details
    When the user clicks the "profile-link" link
    Then they see all of their profile details on the page

