require 'rails_helper'

describe Product do
  let (:product) { Product.create!(name: "Not that kind of girl")}


  let (:user) { User.create! (email: "ramplachi@to.com", password: "whatever")}

  before do
    product.comments.create!(rating: 1, user: user, body: "Dull book!")
    product.comments.create!(rating: 3, user: user, body: "It was ok reading it")
    product.comments.create!(rating: 5, user: user, body: "Awesome reading!")
  end

  it "returns the average rating of all comments" do
    expect(product.average_rating). to eq 3

  end
  it "is not valid without a name" do
      expect(Product.new(description: "Nice book")).not_to be_valid
    end
end
