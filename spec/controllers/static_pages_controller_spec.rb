require "rails_helper"

RSpec.describe StaticPagesController, :type => :controller do

  # Index - when unauthenticated
  describe "GET #index when unauthenticated - route to #landing" do
    it "responds successfully with an HTTP 200 status code" do
      get :landing
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the landing template" do
      get :landing
      expect(response).to render_template("landing")
    end
  end

  # Index - when authenticated
  describe "GET #index when authenticated - route to #index" do
    it "responds successfully with an HTTP 200 status code" do
      sign_in
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      sign_in
      get :index
      expect(response).to render_template("index")
    end
  end

  # Landing
  describe "GET #landing" do
    it "responds successfully with an HTTP 200 status code" do
      get :landing
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the landing template" do
      get :landing
      expect(response).to render_template("landing")
    end
  end

  # About
  describe "GET #about" do
    it "responds successfully with an HTTP 200 status code" do
      get :about
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the about template" do
      get :about
      expect(response).to render_template("about")
    end
  end

  # Contribute
  describe "GET #contribute" do
    it "responds successfully with an HTTP 200 status code" do
      get :contribute
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the contribute template" do
      get :contribute
      expect(response).to render_template("contribute")
    end
  end
end
