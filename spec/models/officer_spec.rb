require 'rails_helper'

RSpec.describe Officer, type: :model do
    it 'is valid with valid attributes'
    it 'is not valid without a position'

    describe 'Associations' do
        it 'should have many riding times' do
            o = Officer.reflect_on_association(:riding_times)
            expect(o.macro).to eq(:has_many)
        end
        it "should have one member" do
            o = Officer.reflect_on_association(:member)
            expect(o.macro).to eq(:belongs_to)
        end
        
    end
end