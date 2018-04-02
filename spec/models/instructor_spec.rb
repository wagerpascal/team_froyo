require 'spec_helper'

describe Instructor do
  #context 'With the contents and the instructor fixtures loaded' do
  before(:each) do
    @instructor = Instructor.new( :name => "Example Instructor", 
    :email => "instructor@example.com", 
    :password => "foobar", 
    :password_confirmation => "foobar")
  end
  #end
  
  it "should be valid" do
    @instructor.should be_valid
  end
  
  
  describe "the name" do
    
    { # 'too short' => 'x',
      'too long' => "a" * 51,
      'empty' => ''
    }.each do |problematic, name|
      it "cannot be #{problematic}" do
          @instructor.name = name
          @instructor.should_not be_valid
          @instructor.errors['name'].should be_any
          
          #set_password password
          #@user.should_not be_valid
          #@user.errors['password'].should be_any
      end
    end
  end
  
  
  
  describe "the email" do
  
    { 'too long' => "a" * 244 + "@example.com",
      'empty' => '',
      'invalid email address' => "instructor@example,com",
      'invalid email address1' => "instructor_at_foo.org",
      'invalid email address2' => "instructor.name@example.",
      'invalid email address3' => "foo@bar_baz.com",
      'invalid email address4' => "foo@bar+baz.com"
    }.each do |problematic, email|
      it "cannot be #{problematic}" do
          @instructor.email = email
          @instructor.should_not be_valid
          @instructor.errors['email'].should be_any
      end
    end
    
    it "should be unique" do
      duplicate_instructor = @instructor.dup
      duplicate_instructor.email = @instructor.email.upcase
      @instructor.save
      duplicate_instructor.should_not be_valid
    end
    
    it "should be saved as lower-case" do
      mixed_case_email = "Foo@ExAMPle.CoM"
      @instructor.email = mixed_case_email
      @instructor.save
      expect(@instructor.reload.email).to eq(mixed_case_email.downcase)
    end
    
  end
  
  
  describe "the password" do
  
    it "should be present (nonblank)" do
      @instructor.password = @instructor.password_confirmation = " " * 6
      @instructor.should_not be_valid
    end
  
    it "should have a minimum length" do
      @instructor.password = @instructor.password_confirmation = "a" * 5
      @instructor.should_not be_valid
    end
  
  end
  
  describe "authenticate?" do
    it 'works as expected' do
        expect(@instructor.authenticated?('')).to be false
    end
    
#    remember_digest.nil
  end
  
  # it 'remember works as expected' do
  #     remember_token = Instructor.new_token  
  #     update_attribute(:remember_digest, Instructor.digest(remember_token))
  #     expect(@instructor.authenticated?('')).to be false
  # end
end
