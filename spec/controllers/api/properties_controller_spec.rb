require 'spec_helper'

describe PropertiesController do

  describe 'index' do
    let(:json) { JSON.parse(response.body) }
    before { get :show }

    it 'returns 3 random properties in json' do
      require 'pry', binding.pry
    end
  end
end
