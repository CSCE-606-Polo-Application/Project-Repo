Given('I am on the herd page') do
    visit horses_path
  end
  
  Given('I am an officer') do
    
  end
  
  When('I click on {string}') do |string|
    click_button string
  end
  
  Then('I will be on the New Horse page') do
    pending # Write code here that turns the phrase above into concrete actions
  end