Feature: management by admin instructor
  
  In order to manage the instructors
  As an admin instructor
  I want to be able to manage all other instructors
  
  Background: instructors in database
    
    Given a user named crazy exists
  
  Scenario: 'Delete an instructor'
    When I log in with admin's information
    Then I should see "admin@admin.com"
    When I am on the instructors page
    Then I should see "crazy"
    And I should see "delete"

    
    
    
    

    