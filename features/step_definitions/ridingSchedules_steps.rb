def get_next_wednesday
  "April 24"
end


Then('I will be on the Riding Schedule page') do
  expect(page.current_url).to eq(page.current_host+riding_schedules_path)
end

Given('I am on the Riding Schedule page') do
  visit riding_schedules_path
end
  
Then('I will be on the New Riding Schedule page') do
  expect(page.current_url).to eq(page.current_host+new_riding_schedule_path)
end

Given('I am on the New Riding Schedule page') do
  visit new_riding_schedule_path
end

Given('the schedule date is set for next Wednesday') do
  date = get_next_wednesday
  month = date.split(" ")[0]
  day = date.split(" ")[1]
  
  select month, from: "riding_schedule[riding_datetime(2i)]"
  select day, from: "riding_schedule[riding_datetime(3i)]"

end

Given('the schedule time is set for {string}') do |string|
  hour = string.split(":")[0]
  if hour.length ==1
    hour = "0"+hour
  end

  minutes = string.split(":")[1].split(" ")[0]
  am_pm = string.split(" ")[1]
  select (hour+" "+am_pm.upcase), from: "riding_schedule[riding_datetime(4i)]"
  select minutes, from: "riding_schedule[riding_datetime(5i)]"
end

Then('I will see a schedule for next Wednesday at {string}') do |string|
  date = get_next_wednesday
  month = date.split(" ")[0]
  day = date.split(" ")[1]

  hour = string.split(":")[0]
  if hour.length ==1
    hour = "0"+hour
  end
  minutes = string.split(":")[1].split(" ")[0]
  if minutes == "0"
    minutes == "00"
  end
  am_pm = string.split(" ")[1]

  expect(page).to have_text (month+" "+day+" - "+hour+":"+minutes+" "+am_pm.upcase)
end