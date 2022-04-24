require 'rails_helper'

RSpec.describe Member, type: :model do
    subject { 
        described_class.new(std_first_name: "Anything",
                            std_last_name: "Anything",
                            uin: 0001,
                            email: "valid@email.com",
                            telephone: "1111111111")
     } 

    it 'is valid with valid attributes' do 
        expect(subject).to be_valid
    end

    it 'is not valid without a first name' do
        subject.std_first_name = nil
        expect(subject).to_not be_valid
    end

    it 'is not valid without a last name' do
        subject.std_last_name = nil
        expect(subject).to_not be_valid
    end

    it 'is not valid without a uin' do
        subject.uin = nil
        expect(subject).to_not be_valid
    end

    it 'is not valid without a phone number' do
        subject.telephone = nil
        expect(subject).to_not be_valid
    end

    it 'is not valid without an email' do
        subject.email = nil
        expect(subject).to_not be_valid
    end

    it 'is not valid with no username in email' do
        subject.email = "@agmail.com"
        expect(subject).to_not be_valid
    end

    it 'is not valid with no domain' do
        subject.email = "username@"
        expect(subject).to_not be_valid
    end
    
    it 'is not valid if improperly formatted domain name' do
        subject.email = "username@asdad."
        expect(subject).to_not be_valid
    end

    it 'is not valid if improperly telephone number with less than 10 digits' do
        subject.telephone = 11111111
        expect(subject).to_not be_valid
    end

    it 'is not valid if telephone number has parenthesis' do
        subject.telephone = "(111)111-1111"
        expect(subject).to_not be_valid
    end

    describe Member do
        it 'should have one officer' do
            m = Member.reflect_on_association(:officer)
            expect(m.macro).to eq(:has_one)
        end
        it 'should have many riding times' do
            m = Member.reflect_on_association(:riding_times)
            expect(m.macro).to eq(:has_many)
        end
        it 'should have many horses' do
            m = Member.reflect_on_association(:horses)
            expect(m.macro).to eq(:has_many)
        end
        it 'should have many riding preferences' do
            m = Member.reflect_on_association(:riding_preferences)
            expect(m.macro).to eq(:has_many)
        end
    end
end