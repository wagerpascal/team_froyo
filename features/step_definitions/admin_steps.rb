Given(/^a user named crazy exists$/) do
    visit signup_path
    fill_in 'Name', :with => "crazy"
    fill_in 'Email', :with => "crazy@crazy.com"
    fill_in 'Password', :with => "mustbecrazy"
    fill_in 'Password confirmation', :with => "mustbecrazy"
    click_button "Create my account"
    
end

def login_with(email, password)
    go_to_login
    fill_in 'Email', :with => 'admin@admin.com'
    fill_in 'Password', :with => '123456'
    click_button 'Log in'
end

def go_to_login
    visit login_path
end

When(/^I log in with admin's information$/) do
  login_with "admin@admin.com", "123456"
end