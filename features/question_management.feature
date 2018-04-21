Feature: question management by instructor
  
  In order to manage the quizzes
  As an instructor
  I want to be able to manage the questions
  
  Background: instructors in database
    
    Given an instructor named crazy exists
  
  Scenario: 'View Questions by Topics'
    When I log in with crazy's information
    Then I click View Questions
    Then I should see "All quizzes"
    And I should see "Data Structures and Algorithms"
    Then I click Data Structures and Algorithms
    Then I should see "Quizzes"
    
  Scenario: 'Add Questions by Topics'
    When I log in with crazy's information
    Then I click View Questions
    Then I should see "All quizzes"
    And I should see "Data Structures and Algorithms"
    Then I click Data Structures and Algorithms
    Then I should see "Create new quiz"
    When I click Create new quiz under Data Structures and Algorithms
    Then I should see "Create Quiz"
    Then I fill in "Question" with "1"
    And I fill in "Answer" with "1"
    And I fill in "Remark" with "1"
    Then I press "Create quiz"
    Then I should see "Quiz created!"
    
  Scenario: 'Add Questions by Topics with null'
    When I log in with crazy's information
    Then I click View Questions
    Then I should see "All quizzes"
    And I should see "Data Structures and Algorithms"
    Then I click Data Structures and Algorithms
    Then I should see "Create new quiz"
    When I click Create new quiz under Data Structures and Algorithms
    Then I should see "Create Quiz"
    Then I fill in "Question" with "1"
    And I fill in "Answer" with ""
    And I fill in "Remark" with "1"
    Then I press "Create quiz"
    Then I should see "Answer can't be blank"
    
  Scenario: 'Edit Questions by Topics'
    When I log in with crazy's information
    Then I click View Questions
    Then I should see "All quizzes"
    And I should see "Quick sort algorithm is an example of? A. Greedy approach B. Improved binary search C. Dynamic programming D. Divide and conquer"
    When I edit Quick sort algorithm is an example of? A. Greedy approach B. Improved binary search C. Dynamic programming D. Divide and conquer
    Then I should see "Update your profile"
    Then I fill in "Remark" with "1"
    And I press "Save changes"
    Then I should see "Quiz updated"
    
  Scenario: 'Edit Questions by Topics with null'
    When I log in with crazy's information
    Then I click View Questions
    Then I should see "All quizzes"
    And I should see "Quick sort algorithm is an example of? A. Greedy approach B. Improved binary search C. Dynamic programming D. Divide and conquer"
    When I edit Quick sort algorithm is an example of? A. Greedy approach B. Improved binary search C. Dynamic programming D. Divide and conquer
    Then I should see "Update your profile"
    Then I fill in "Answer" with ""
    And I press "Save changes"
    Then I should see "Answer can't be blank"

    
  

    
    
    
    

    