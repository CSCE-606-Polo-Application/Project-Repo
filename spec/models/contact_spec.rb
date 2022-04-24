require 'rails_helper'

RSpec.describe Contact, type: :model do
    subject { described_class.new(  name: "Anything",
                                    nickname: "Anything",
                                    message: "Anything",
                                    email: "Email@tamu.edu"
    ) } 

    it 'is a valid contact model with valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without a name' do
        subject.name = nil
        expect(subject).to_not be_valid
    end

    it 'is not valid without a message' do
        subject.message = nil
        expect(subject).to_not be_valid
    end

    it 'is not valid without an email' do
        subject.email = nil
        expect(subject).to_not be_valid
    end

    it 'is not valid with an email without a username' do
        subject.email = "@asd.sad"
        expect(subject).to_not be_valid
    end

    it 'is not valid with an email without a domain name' do
        subject.email = "asdasd@"
        expect(subject).to_not be_valid
    end
end