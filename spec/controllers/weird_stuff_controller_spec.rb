require 'spec_helper'

describe WeirdStuffController do

  describe "GET 'index'" do

    it "should be success" do
      get :index
      response.should be_success
    end
  end

end
