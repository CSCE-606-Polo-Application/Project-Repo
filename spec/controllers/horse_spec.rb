require 'rails_helper'

RSpec.describe HorsesController do
    describe 'GET index' do
        it 'assigns @horse' do
            horse = Horse.create
            get :index
            expect(assigns(:horses)).to eq([horse])  
        end

        it 'renders the index template' do
            get :index
            expect(response).to render_template('index')
        end
    end

    
end