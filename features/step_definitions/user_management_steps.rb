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
