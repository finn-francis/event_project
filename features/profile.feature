Feature: Profile

  Scenario: A User edits their name on their profile
    Given they are signed in
      And the user clicks the "Edit Profile" link
    When they enter their profile details
    Then the profile edits will be saved

  Scenario: A User views their profile page
    Given they are signed in
    When the user clicks the "profile-link" link
    Then they see all of their profile details on the page

  Scenario: A User visits someone elses profile
    Given they are signed in
      And there is an event with attendees
      And they visit the event page
    When they click on an attendees profile thumbnail
    Then they should be redirectd to the users profile

  Scenario: A User views thei profile page
    Given they are signed in
      And there is an event with attendees
    When the user clicks the "Profile" link
    Then they should see the events that they are attending

