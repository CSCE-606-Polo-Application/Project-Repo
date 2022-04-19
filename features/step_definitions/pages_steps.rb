Given('I am on the home page') do
    visit root_path
  end
  
  Then('I should see {string}') do |string|
    expect(page.has_content?(string)).to eq(true)
  end

  Then('I should not see {string}') do |string|
    expect(page.has_content?(string)).to eq(false)
  end

Given('{string} is set to {string}') do |string, string2|
    begin
      fill_in string, with: string2

    rescue
      select string2, from: @model+string.downcase
    end

  end