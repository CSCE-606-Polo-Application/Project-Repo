require 'rails_helper'

RSpec.describe RidingTimesController do
    describe 'GET index' do
        it 'assigns @riding_time' do
            riding_time = RidingTime.create
            get :index
            expect(assigns(:riding_times)).to eq([riding_time])  
        end

        it 'renders the index template' do
            get :index
            expect(response).to render_template('index')
        end
    end
end