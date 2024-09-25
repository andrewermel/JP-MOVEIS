require 'rails_helper'

RSpec.describe ItemsController , type: :request do 
    describe "GET #index" do
    let!(:item1) { create(:item) }
    let!(:item2) { create(:item) }
        it "returns a successful response" do 
            get items_path
            expect(response).to have_http_status(:ok) 
        end

    end  
end
