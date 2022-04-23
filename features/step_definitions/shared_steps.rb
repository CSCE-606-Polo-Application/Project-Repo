Given('I am an officer') do
    
end

When('I click on {string}') do |string|
  click_on string
end

Then('I will see {string}') do |string|
  expect(page).to have_text string
end

Given('{string} is set to {string}') do |string, string2|
  begin
    fill_in string, with: string2

  rescue
    select string2, from: @model+string.downcase
  end
end