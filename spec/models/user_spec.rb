require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "should validate email is unique" do
	  should validate_uniqueness_of(:email)
  end

  it "should have many ratings for user" do
  	user = FactoryBot.create(:user, password: "firose")
  	news = FactoryBot.create(:new)
  	news1 = FactoryBot.create(:new)
  	rating1 = FactoryBot.create(:rating, user_id: user.id, new_id: news.id)
  	rating2 = FactoryBot.create(:rating, user_id: user.id, new_id: news1.id)
  	should have_many(:rating)
  end

  it 'should not be valid if password is not present' do
    user = FactoryBot.create(:user, password: "sds")
    user.password = nil
    expect(user).to be_invalid
  end
  it 'should be valid if password is present' do
    user = FactoryBot.create(:user, password: "sds")
    expect(user).to be_valid
  end
  it 'should not be valid if mail id is not present' do
    user = FactoryBot.create(:user, email: "fi@gmail.com", password: "scsd")
    user.email = nil
    expect(user).to be_invalid
  end
  it 'should be valid if mail is present' do
    user = FactoryBot.create(:user, email: "sds", password:"de")
    expect(user).to be_valid
  end
end
