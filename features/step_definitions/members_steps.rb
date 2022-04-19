Given('I am on the members page') do
    visit members_path
  end

Then('I will be on the New Member page') do
    expect(page.current_url).to eq(page.current_host+new_member_path)
  end

Given('I am on the New Member page') do
    visit new_member_path
    @model = "member_"
  end

