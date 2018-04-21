Feature: question management by instructor
  
  In order to manage the quizzes
  As an instructor
  I want to be able to manage the questions
  
  Background: instructors in database
    
    Given an instructor named crazy exists
  
  Scenario: 'View Questions'
    When I log in with crazy's information
    Then I click View Questions
    Then I should see "All quizzes"

    
    
    
    

    