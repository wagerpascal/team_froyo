Feature: sign up by instructor
  
  In order to manage the website
  As an instructor
  I want to be able to sign up
  
  Scenario: 'Standard Instructor Registration Success'
    When I am on the signup page 
    Then I should see "Sign up"
    And I fill in "Name" with "Hanna"
    And I fill in "Email" with "hanna@gmail.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I press "Create My Account"
    Then I should see "Signed up successfully."
  
  Scenario: 'Standard Instructor Registration Fail - Name'
    When I am on the signup page 
    Then I should see "Sign up"
    And I fill in "Name" with ""
    And I fill in "Email" with "hanna@gmail.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I press "Create my account"
    Then I should see "Name can't be blank"

  Scenario: 'Standard Instructor Registration Fail - Email'
    When I am on the signup page 
    Then I should see "Sign up"
    And I fill in "Name" with "Hanna"
    And I fill in "Email" with "hanna"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I press "Create my account"
    Then I am on the signup page 
    
  Scenario: 'Standard Instructor Registration Fail - Password'
    When I am on the signup page 
    Then I should see "Sign up"
    And I fill in "Name" with "Hanna"
    And I fill in "Email" with "hanna@gmail.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password1"
    And I press "Create my account"
    Then I should see "Password confirmation doesn't match Password"

    