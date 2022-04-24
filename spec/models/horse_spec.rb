require 'rails_helper'

RSpec.describe Horse, type: :model do
    it 'is valid with valid attributes'
    it 'is not valid without a brand number'
    it 'is not valid without a name'
    it 'is not valid without availability'

    describe 'Associations' do
        it 'should have many riding times' do
            h = Horse.reflect_on_association(:riding_times)
            expect(h.macro).to eq(:has_many)
        end
        it 'should have many members' do
            h = Horse.reflect_on_association(:members)
            expect(h.macro).to eq(:has_many)
        end
        it 'should be have many riding preferences' do
            h = Horse.reflect_on_association(:riding_preferences)
            expect(h.macro).to eq(:has_many)
        end
    end
end