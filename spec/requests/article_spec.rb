require "rails_helper"

RSpec.describe "Article", :type => :request do

  it "creates a new article" do
    post "/articles/newLike", :params => { :article => {:a_id => 3, :likes => 1} }

    expect(response).to have_http_status(:created)
  end

  it "creates a increments a like when article already exists" do
    post "/articles/newLike", :params => { :article => {:a_id => 3, :likes => 1} }
    post "/articles/newLike", :params => { :article => {:a_id => 3, :likes => 1} }
    expect(response).to have_http_status(:ok)
  end


end