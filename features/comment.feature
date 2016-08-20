Feature: Comment

  Background:
    Given there are two users
      And the User is signed up
      And they are signed in
      And they have filled in their profiles
      And there is an event with attendees
      And they visit the event page

  Scenario: A User leaves a comment on an event
    When they write a comment in the comment box
      And they click the "Post Comment" button
    Then their comment is posted
