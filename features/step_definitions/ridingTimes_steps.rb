Then('I will be on the Riding Times page') do
  expect(page.current_url).to eq(page.current_host+riding_times_path)
end

Given('I am on the Riding Times page') do
  visit riding_times_path
end
  
Then('I will be on the New Riding Time page') do
  expect(page.current_url).to eq(page.current_host+new_riding_time_path)
end