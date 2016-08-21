Feature: Profile

  Scenario: A User edits their name on their profile
    Given the user is on the sign up page
      And they fill in their details
      And they click the "Sign up" button
      And the user clicks the "Edit Profile" link
    When they enter their profile details
      And they click the "Save" button
    Then the profile edits will be saved

  Scenario: A User views their profile page
    Given the user is on the sign up page
      And they fill in their details
      And they click the "Sign up" button
      And they have filled in their profile details
    When the user clicks the "profile-link" link
    Then they see all of their profile details on the page

  Scenario: A User visits someone elses profile
    Given there are two users
      And the User is signed up
      And they are signed in
      And they have filled in their profiles
      And there is an event with attendees
      And they visit the event page
    When they click on an attendees profile thumbnail
    Then they should be redirectd to the users profile

  Scenario: A User views thei profile page
    Given there are two users
      And the User is signed up
      And they are signed in
      And they have filled in their profiles
      And there is an event with attendees
    When the user clicks the "Profile" link
    Then they should see the events that they are attending

