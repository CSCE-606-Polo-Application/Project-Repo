  Given('I am on the herd page') do
    visit horses_path
  end

  Given("I am on the New Horse page") do
    visit new_horse_path
    @model = "horse_"
  end
  
  Then('I will be on the New Horse page') do
    expect(page.current_url).to eq(page.current_host+new_horse_path)
  end

  # Given('{string} is set to {string}') do |string, string2|
  #   begin
  #     fill_in string, with: string2

  #   rescue
  #     select string2, from: "horse_"+string.downcase
  #   end

  # end

  Then('I will see {string}') do |string|
    expect(page).to have_text string
  end