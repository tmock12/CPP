require 'rails_helper'

describe Api::PropertiesController, type: :controller do

  describe 'intex' do
    let(:json) { JSON.parse(response.body) }
    before do
      4.times { Fabricate(:property) }
      get :index
    end

    it 'returns 3 random properties in json' do
      expect(json['properties'].length).to eq(3)
    end
  end
end
