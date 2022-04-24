require 'rails_helper'

RSpec.describe MembersController do
    describe 'GET index' do
        it 'assigns @members' do
            member = Member.create
            get :index
            expect(assigns(:members)).to eq([member])  
        end

        it 'renders the index template' do
            get :index
            expect(response).to render_template('index')
        end
    end
end