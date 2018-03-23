Feature: sign up by instructor
  
  In order to manage the website
  As an instructor
  I want to be able to sign up
  
  Scenario: 'Standard Instructor Registration'
    Given I am not currently logged in 
    When I am on the signup page 
    Then I should see "Create my account"
    And I fill in "Name" with "Hanna"
    And I fill in "Email" with "hanna@gmail.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I press "Create my account"
    Then I should be on my account page 
    And I should see "Signed up successfully!"