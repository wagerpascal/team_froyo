Feature: edit profile by instructor
  
  In order to update my profile
  As an instructor
  I want to be able to edit my profile
  
  Background: instructors in database
    
    Given an instructor named crazy exists
  
  Scenario: 'Update profile'
    When I log in with crazy's information
    Then I click Settings
    Then I should see "Update your profile"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I press "Save changes"
    Then I should see "Profile updated"
    
  

    
