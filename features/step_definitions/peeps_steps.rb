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


