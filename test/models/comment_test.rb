require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  
  test "humanized rating method converts encoded value" do
     user = FactoryGirl.create(:user)     
     comment = FactoryGirl.create(:comment, rating: "5_stars")

     expected = '5 stars'
     actual = comment.humanized_rating
     assert expected, actual
  end

end
