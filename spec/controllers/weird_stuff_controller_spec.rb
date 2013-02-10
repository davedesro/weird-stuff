require 'spec_helper'

describe WeirdStuffController do

  describe "GET 'index'" do

    it "should be success" do
      get :index
      response.should be_success
    end

    it "should set a random weird page to like" do
      site = FactoryGirl.create(:weird_site)
      WeirdSite.should_receive(:random).once.and_return(site)
      get :index
    end

    it "should set the admin user if logged in" do
      subject.should_receive(:admin_user).once.and_return(nil)
      get :index
    end
  end

end
