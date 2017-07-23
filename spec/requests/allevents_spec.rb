require 'rails_helper'

RSpec.describe "Allevents", type: :request do
  describe "GET /allevents" do
    it "works! (now write some real specs)" do
      get allevents_path
      expect(response).to have_http_status(200)
    end
  end
end
