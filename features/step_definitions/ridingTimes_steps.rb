Given('there is a riding schedule for 6:00pm on April {int}') do |int|
    @riding_schedule = RidingSchedule.create({"riding_datetime(1i)"=>"2022", "riding_datetime(2i)"=>"4", "riding_datetime(3i)"=>String(int), "riding_datetime(4i)"=>"18", "riding_datetime(5i)"=>"00"})  
end

Given('I am on the April 27 6:00pm riding schedule page') do 
    visit riding_schedule_path(@riding_schedule)
    #print page.html
end
    
Then('I will be on the April 27 6:00pm riding schedule page') do
    expect(page.current_url).to eq(page.current_host+riding_schedule_path(@riding_schedule))
end

Then('I will be on the new riding time page') do
    expect(page.current_url).to eq(page.current_host+new_riding_schedule_riding_time_path(@riding_schedule))
end

Given('I am on the April 27 6:00pm new riding time page') do 
    visit new_riding_schedule_riding_time_path(@riding_schedule)
end

Given('Rider is set to {string}') do |string|
    select string, from: "riding_time[member_id]"
end
  
Given('Horse is set to {string}') do |string|
    select string, from: "riding_time_horse_id"
end

Given('{string} is signed up to ride {string} on April 27 at 6:00pm') do |string, string2|
    member_id = Member.where(std_first_name: string.split[0],std_last_name: string.split[1]).ids[0]

    horse_id = Horse.where(horse_name: string2).ids[0]
    new_riding_time = make_new_riding_time(@riding_schedule,member_id,horse_id)
end

def make_new_riding_time(riding_schedule, member_id="1", horse_id="1")
    @riding_time = RidingTime.create({"riding_schedule"=>riding_schedule, "member_id"=>member_id, "horse_id"=>horse_id })
end