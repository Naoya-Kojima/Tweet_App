require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "エラーメッセージ" do
    it "return can't be blank" do
      user = User.new
      user.valid?
      expect(user.errors.messages[:name]).to include("can't be blank")
    end
  end
end
