Given /^I am signed in as a user/ do
  @user ||= Fabricate(:user)
  visit admin_path
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: 'password'
  click_button 'Sign in'
end
