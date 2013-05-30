require 'spec_helper'

describe Api::PropertiesController do

  describe 'index' do
    let(:json) { JSON.parse(response.body) }
    before do
      4.times { Fabricate(:property) }
      get :index
    end

    it 'returns 3 random properties in json' do
      json["properties"].count.should eq(3)
    end
  end
end
