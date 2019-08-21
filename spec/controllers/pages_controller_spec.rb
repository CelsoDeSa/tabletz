require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #sobre" do
    it "returns http success" do
      get :sobre
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #contato" do
    it "returns http success" do
      get :contato
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #termos_de_uso" do
    it "returns http success" do
      get :termos_de_uso
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #politica_de_privacidade" do
    it "returns http success" do
      get :politica_de_privacidade
      expect(response).to have_http_status(:success)
    end
  end

end
