require 'rails_helper'

RSpec.describe RidingTime, type: :model do
    it 'is valid with valid attributes'
    it 'is not valid without a riding time'
    it 'is nto valid without a riding date'

    describe 'Associations' do 
        it 'should belong to the members model' do
            rt = RidingTime.reflect_on_association(:member)
            expect(rt.macro).to eq(:belongs_to)
        end
        it 'should belong to the officers model' do
            rt = RidingTime.reflect_on_association(:officer)
            expect(rt.macro).to eq(:belongs_to)
        end
        it 'should belong to the horse model' do
            rt = RidingTime.reflect_on_association(:horse)
            expect(rt.macro).to eq(:belongs_to)
        end
    end

end