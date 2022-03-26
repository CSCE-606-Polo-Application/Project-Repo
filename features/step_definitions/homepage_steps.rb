Given('I am on the home page') do
    visit root_path
  end
  
  Then('I should see {string}') do |string|
    page.has_content?(text)
  end