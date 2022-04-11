require 'rails_helper'

RSpec.describe OfficersController do
    describe 'GET index' do
        it 'assigns @officers' do
            officer = Officer.create
            get :index
            expect(assigns(:officers)).to eq([officer])  
        end

        it 'renders the index template' do
            get :index
            expect(response).to render_template('index')
        end
    end
end
