Given(/^the following peeps have been submitted:$/) do |peeps|
  peeps.hashes.each do |peep|
    Peep.create(peep)
  end
end

Then(/^Enrique submits the following peep:$/) do |peeps|
  click_link('Peep')
  peeps.hashes.each do |peep|
    fill_in :body, :with => peep["body"]
    click_button('Add Peep')
  end
end


Given(/^Enrique has submitted the following peep:$/) do |peeps|
  peeps.hashes.each do |peep|
    Peep.create(peep)
  end
end


Then(/^I should see "(.*?)":$/) do |created_at, peeps|
   peeps.hashes.each do |peep|
    new_peep = Peep.create(:body => peep["body"], :created_at => peep["created_at"], :user_id => peep["user_id"])
    expect('/').to include created_at
  end
end