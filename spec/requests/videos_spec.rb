require 'rails_helper'

RSpec.describe "Videos", :type => :feature do
  describe "GET /videos" do
    it "works! (now write some real specs)" do
      get videos_path
      expect(response.status).to be(200)
    end
  end
end
