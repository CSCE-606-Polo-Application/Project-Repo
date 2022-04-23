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

Given('a member named {string}') do |string|
  first_name = string.split(" ")[0]
  last_name = string.split(" ")[1]
  make_new_member(first_name, last_name)
end

def make_new_member(std_first_name="Bill",std_last_name="Jenkins",uin="000000001", telephone="979-333-5151", email="dummy@tamu.edu")
  @member = Member.create({"std_first_name"=>std_first_name, "std_last_name"=>std_last_name, "uin"=>uin, "telephone"=>telephone, "email"=>email })
end