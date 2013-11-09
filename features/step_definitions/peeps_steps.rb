Given(/^the following peeps have been submitted:$/) do |peeps|
  peeps.hashes.each do |peep|
    Peep.create(peep)
  end
end