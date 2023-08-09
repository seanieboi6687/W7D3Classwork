require 'rails_helper'

RSpec.describe User, type: :model do
  let(:incomplete_user) { User.new(username: "", password: "password") }
  # pending "add some examples to (or delete) #{__FILE__}"

  # it { should validate_presence_of(:username)} 
  # it { should validate_presence_of(:session_token)} 
  # it { should validate_presence_of(:password_digest)} 
  # it { should have_many(:chirps) }

  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }


  describe '#is_password?' do 

    let(:user) { create(:user) }

    context "with an invalid password" do 
      it "should return false" do 
        expect(user.is_password?("passwrod")).to be false
      end
    end

    context "with a valid password" do 
      it "should return true" do 
        expect(user.is_password?("password")).to be true
      end
    end

  end






end
