Given  /^I am logged in as "(.*?)"$/ do |email|
  user = User.find_by_email(email)
  visit '/users/sign_in'
  fill_in "Email", :with => user.email
  fill_in "Password", :with => "12345678"
  click_button "Sign in"
end
