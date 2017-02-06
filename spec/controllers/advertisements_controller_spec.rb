require 'rails_helper'

RSpec.describe AdvertisementsController, type: :controller do

  let(:my_ad) {Advertisement.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph)}


  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, {id: my_ad.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "increases the number of Ad by 1" do
      expect{advertisement :create, advertisement: {title: RandomData.random_sentence, body: RandomData.random_paragraph}}.to change(Advertisement,:count).by(1)
    end
    #
    # it "assigns the new post to @post" do
    #   advertisement :create, advertisement: {title: RandomData.random_sentence, body: RandomData.random_paragraph}
    #   expect(assigns(:advertisement)).to eq Advertisement.last
    # end
    #
    # it "redirects to the new post" do
    #     advertisement :create, advertisement: {title: RandomData.random_sentence, body: RandomData.random_paragraph}
    #     expect(response).to redirect_to Advertisement.last
    # end
  end

end
