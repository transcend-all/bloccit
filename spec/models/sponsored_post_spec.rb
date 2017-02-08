require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do

  let(:name) { RandomData.random_sentence }
  let(:body) { RandomData.random_paragraph }

  describe "attributes" do
    it "has name, description, and public attributes" do
      expect(topic).to have_attributes(name: name, body: body)
    end
  end
  
end
