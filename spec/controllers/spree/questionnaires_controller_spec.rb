require 'spec_helper'

describe Spree::QuestionnairesController do

  describe "GET 'index'" do
    it "returns http success" do
      visit spree.questionnaire_path
      response.should be_success
    end
  end

end
