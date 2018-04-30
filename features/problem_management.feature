Feature: question management by instructor
  
  In order to manage the problems
  As an instructor
  I want to be able to manage the problems
  
  Background: instructors in database
    
    Given an instructor named crazy exists
  
  Scenario: 'View Problems by Topics'
    When I log in with crazy's information
    Then I click View Problems
    Then I should see "All problems"
    And I should see "Data Structures and Algorithms"
    Then I click Data Structures and Algorithms
    Then I should see "Problems"
    
  Scenario: 'Add Problems by Topics'
    When I log in with crazy's information
    Then I click View Problems
    Then I should see "All problems"
    And I should see "Data Structures and Algorithms"
    Then I click Data Structures and Algorithms
    Then I should see "Create new problem"
    When I click Create new problem under Data Structures and Algorithms
    Then I should see "Create Problem"
    Then I fill in "Question" with "1"
    And I fill in "Answer" with "1"
    And I fill in "Remark" with "1"
    Then I press "Create problem"
    Then I should see "Problem created!"
    
  Scenario: 'Add Problems by Topics with null'
    When I log in with crazy's information
    Then I click View Problems
    Then I should see "All problems"
    And I should see "Data Structures and Algorithms"
    Then I click Data Structures and Algorithms
    Then I should see "Create new problem"
    When I click Create new problem under Data Structures and Algorithms
    Then I should see "Create Problem"
    Then I fill in "Question" with "1"
    And I fill in "Answer" with ""
    And I fill in "Remark" with "1"
    Then I press "Create problem"
    Then I should see "Answer can't be blank"
    
  Scenario: 'Edit Problems by Topics'
    When I log in with crazy's information
    Then I click View Problems
    Then I should see "All problems"
    And I should see "Quick sort algorithm is an example of? A. Greedy approach B. Improved binary search C. Dynamic programming D. Divide and conquer"
    When I edit Quick sort algorithm is an example of? A. Greedy approach B. Improved binary search C. Dynamic programming D. Divide and conquer
    Then I should see "Update Problem"
    Then I fill in "Remark" with "1"
    And I press "Save changes"
    Then I should see "Problem updated"
    
  Scenario: 'Edit Problems by Topics with null'
    When I log in with crazy's information
    Then I click View Problems
    Then I should see "All problems"
    And I should see "Quick sort algorithm is an example of? A. Greedy approach B. Improved binary search C. Dynamic programming D. Divide and conquer"
    When I edit Quick sort algorithm is an example of? A. Greedy approach B. Improved binary search C. Dynamic programming D. Divide and conquer
    Then I should see "Update Problem"
    Then I fill in "Answer" with ""
    And I press "Save changes"
    Then I should see "Answer can't be blank"

    
  

    
    
    
    

    