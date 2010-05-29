Given /^I am logged in$/ do
  user = User.create! :login => "MarkSmith", :password => 'password', :password_confirmation => 'password'
  visit new_user_session_path
  fill_in 'login', :with => user.login
  fill_in 'password', :with => 'password'
  click_button 'Login'
  response.should contain('Login successful!')
end

Given /^I have an account as "(.+)" with password "(.+)"$/ do |name, password|
  User.create! :login => name, :password => password, :password_confirmation => password
end
