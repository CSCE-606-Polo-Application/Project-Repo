require 'rails_helper'

RSpec.describe Member, type: :model do
    it 'is valid with valid attributes'
    it 'is not valid without a first name'
    it 'is not valid without a last name'
    it 'is not valid without a uin'
    it 'is not valid without a phone number'
    it 'is not valid without an email'

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