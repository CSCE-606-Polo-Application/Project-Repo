require 'rails_helper'

RSpec.describe Officer, type: :model do
    subject { described_class.new(  position: "Anything",
                                    member_id: 1
    )}
    
    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without a position' do
        subject.position = nil
        expect(subject).to_not be_valid
    end

    it 'is not valid if the member does not exist' do
        subject.member_id = 60
        expect(subject).to_not be_valid
    end

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