
When("I go to google") do
  visit 'http://www.google.com'
end

Then("I should see the google logo and be able to perform a search") do
  page.find('img#hplogo')
  fill_in 'lst-ib', with: 'Giraffes'
  click_on 'Google Search'
end

Then ("I should be able to look for images of Giraffes") do
  click_on 'images'
end

Then ("I should be able to look for images of Cats") do
  click_on 'Go to Google Home'
  fill_in 'lst-ib', with: 'Cats'
  click_on 'Google Search'
  click_on 'images'
  sleep 10
end
