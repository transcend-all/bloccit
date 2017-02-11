require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do

  let(:name) { RandomData.random_sentence }
  let(:body) { RandomData.random_paragraph }
  let(:sponsored_post) {SponsoredPost.create(title: title, body: body)}


  describe "attributes" do
    it "has name and body attributes" do
      expect(sponsored_post).to have_attributes(title: title, body: body)
    end
  end

end
