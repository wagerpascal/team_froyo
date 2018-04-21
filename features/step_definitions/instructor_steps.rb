Then(/^I click Settings$/) do
  @instructor = Instructor.find_by(name: "crazy")
  visit edit_instructor_path(@instructor)
end

Then(/^I click View Topics$/) do
  visit topics_path
end

Then(/^I click View Questions$/) do
  visit quizzes_path
end

Then(/^I click Create new topic$/) do
  visit new_topic_path 
end

When(/^I am not log in$/) do
  session.delete(:instructor_id)
end

When(/^I click edit of Data Structures and Algorithms$/) do
  @topic = Topic.find_by(name: "Data Structures and Algorithms")
  find(:xpath, "//a[@href='#{edit_topic_path(@topic)}']", :text => "edit").click
end 

When(/^I click delete of Data Structures and Algorithms$/) do
  @topic = Topic.find_by(name: "Data Structures and Algorithms")
  find(:xpath, "//a[@href='#{topics_path(@topic).sub! '.', '/'}']", :text => "delete").click
end 

Then(/^I click Data Structures and Algorithms$/) do
  @topic = Topic.find_by(name: "Data Structures and Algorithms")
  find(:xpath, "//a[@href='#{topics_path(@topic).sub! '.', '/'}']", :text => "Data Structures and Algorithms", :match => :first).click
end

When(/^I click Create new quiz under Data Structures and Algorithms$/) do
  @topic = Topic.find_by(name: "Data Structures and Algorithms")
  visit new_quiz_path(:topic_from => @topic.id)
end

When("I edit Quick sort algorithm is an example of? A. Greedy approach B. Improved binary search C. Dynamic programming D. Divide and conquer") do
  @quiz = Quiz.find_by(id: 1)
  visit edit_quiz_path(@quiz)
end







