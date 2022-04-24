require 'rails_helper'

RSpec.describe Horse, type: :model do
    subject { described_class.new(  horse_name: "Anything",
                                    brand_number: "1500",
                                    availability: true
                ) 
    } 
    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without a brand number' do
        subject.brand_number = nil
        expect(subject).to_not be_valid
    end

    it 'is not valid without a name' do
        subject.horse_name = nil
        expect(subject).to_not be_valid
    end

    it 'is not valid with alpha characters in brand number' do
        subject.brand_number = "abc"
        expect(subject).to_not be_valid
    end

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