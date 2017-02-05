require 'rails_helper'
include RandomData

RSpec.describe ChickensController, type: :controller do
  let(:my_chicken) do
    Chicken.create(
      id: 1,
      title: RandomData.random_sentence,
      body: RandomData.random_paragraph,
      price: 7
    )
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns [my_chicken] to @advertisements" do
      get :index
      expect(assigns(:chickens)).to eq([my_chicken])
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
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
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

end
