
When("I go to google") do
  visit 'http://www.google.com'
end

Then("I should see the google logo and be able to perform a search") do
  page.find('img#hplogo')
  fill_in 'lst-ib', with: 'Giraffes'
  click_on 'Google Search'
end
