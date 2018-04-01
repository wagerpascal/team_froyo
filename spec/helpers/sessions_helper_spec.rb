# require 'spec_helper'

# describe SessionsHelper do

#   before(:each) do
#     @instructor = instructors(:admin)
#     remember(@instructor)
#   end
  
#   before(:each) do
#     @instructor = Instructor.new( :name => "Example Instructor", 
#     :email => "instructor@example.com", 
#     :password => "foobar", 
#     :password_confirmation => "foobar")
#     @instructor.remember#(@instructor)
#   end
  
#   describe "current_instructor" do
#     it "should return right instructor when session is nil" do
#       expect(@instructor).to eq(current_instructor)
#       assert is_logged_in?
#     end
#   end

#   it "should return nil when remember digest is wrong" do
#     @instructor.update_attribute(:remember_digest, Instructor.digest(Instructor.new_token))
#     current_instructor.should be_nil
#   end
# end