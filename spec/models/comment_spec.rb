require "rails_helper"

describe Comment, type: :model do
  context "rating must be present" do

    let (:product) { Product.create!(name: "Momo")}

    let (:comment) { User.create!(rating:"3")}

   it "is not valid without a rating" do
     expect(Comment.new(rating: "")).not_to be_valid
   end
  end
end
