When(/^Enrique signs up$/) do
  click_link('Sign up')
  fill_in :first_name, :with => 'Enrique'
  fill_in :last_name, :with => 'Comba Riepenhausen'
  fill_in :email, :with => 'ecomba@makersacademy.com'
  fill_in :username, :with => 'ecomba'
  fill_in :password, :with => 's3cr3t'
  fill_in :password_confirmation, :with => 's3cr3t'
  click_button('Sign up')
end

When(/^Enrique signs up with non\-matching passwords$/) do
  click_link('Sign up')
  fill_in :first_name, :with => 'Enrique'
  fill_in :last_name, :with => 'Comba Riepenhausen'
  fill_in :email, :with => 'ecomba@makersacademy.com'
  fill_in :username, :with => 'ecomba'
  fill_in :password, :with => 's3cr3t'
  fill_in :password_confirmation, :with => 'nots3cr3t'
  click_button('Sign up')
end

When(/^Nadia signs up with the same email as Enrique$/) do
  click_link('Sign up')
  fill_in :first_name, :with => 'Nadia'
  fill_in :last_name, :with => 'Odunayo'
  fill_in :email, :with => 'ecomba@makersacademy.com'
  fill_in :username, :with => 'NadiDami'
  fill_in :password, :with => 's3cr3t'
  fill_in :password_confirmation, :with => 's3cr3t'
  click_button('Sign up')
end

When(/^Nadia signs up with the same username as Enrique$/) do
  click_link('Sign up')
  fill_in :first_name, :with => 'Nadia'
  fill_in :last_name, :with => 'Odunayo'
  fill_in :email, :with => 'nodunayo@makersacademy.com'
  fill_in :username, :with => 'ecomba'
  fill_in :password, :with => 's3cr3t'
  fill_in :password_confirmation, :with => 's3cr3t'
  click_button('Sign up')
end

Given(/^Enrique is an existing user$/) do
  User.create(first_name: 'Enrique', last_name: 'Comba Riepenhausen', 
                    email: 'ecomba@makersacademy.com', username:'ecomba', password: 's3cr3t',
                    password_confirmation: 's3cr3t')  
end

When(/^Enrique signs in with the correct username and password$/) do
  click_link('Sign in')
  fill_in :username, :with => 'ecomba'
  fill_in :password, :with => 's3cr3t'
  click_button('Sign in')
end

When(/^Enrique signs in with the incorrect password$/) do
  click_link('Sign in')
  fill_in :username, :with => 'ecomba'
  fill_in :password, :with => 'nots3cr3t'
  click_button('Sign in')
end

Then(/^Enrique signs out$/) do
  click_button('Sign out')
end
