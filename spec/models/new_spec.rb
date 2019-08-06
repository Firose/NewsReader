require 'rails_helper'
RSpec.describe New do
  describe 'new' do
    it "should have many ratings for news" do
  	 should have_many(:rating)
    end
end
