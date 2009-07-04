Feature: Manage Cooks
  In order to rock
  As an user
  I want to create and manage notes

Scenario: Create Valid Note
  Given I have no notes
  And I am on the list of notes
  When I follow "New note"
  And I fill in "Title" with "Tokyo Rocks"
  And I fill in "Body" with "Tokyo products for the win!"
  And I press "Create"
  And I should see "Tokyo Rocks"
  And I should see "Tokyo products for the win!"
  And I should have 1 note

Scenario: Notes List
  Given I have notes titled Cabinet, Tyrant
  When I go to the list of notes
  Then I should see "Cabinet"
  And I should see "Tyrant"

Scenario: Lots of data
  Given I have 1000 notes
  And I go to the list of notes
  Then I should see "title1"

