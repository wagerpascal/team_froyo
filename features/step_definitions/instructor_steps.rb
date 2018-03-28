Then(/^I click Settings$/) do
  @instructor = Instructor.find_by(name: "crazy")
  visit edit_instructor_path(@instructor)
end
