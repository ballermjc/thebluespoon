require 'rails_helper'

describe Product do

  context "when the product has comments" do
    before do
      @product = Product.create!(name: "race bike")
      @user = User.create!(email: "jsmith@test.com", password: "Passphrase123")
      @comments = @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
      @comments = @product.comments.create!(rating: 3, user: @user, body: "Ok bike!")
      @comments = @product.comments.create!(rating: 5, user: @user, body: "Great bike!")
    end

    it "returns the average rating of all comments" do
      expect(@product.average_rating).to eq 3
    end

    it "is not valid" do
      expect(Product.new(description: "Nice Bike")).not_to be_valid
    end

  end

end
