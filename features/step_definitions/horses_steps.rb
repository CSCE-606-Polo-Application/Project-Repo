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

  Given('a horse named {string}') do |string|
    horse_name = string
    make_new_horse(horse_name)
  end
  
  def make_new_horse(horse_name="Bill",brand_number="1",availability=true)
    @horse = Horse.create({"horse_name"=>horse_name, "brand_number"=>brand_number, "availability"=>availability })
  end

