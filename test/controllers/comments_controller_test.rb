require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "comment_create" do
		user = FactoryGirl.create(:user)
		sign_in user
		place = FactoryGirl.create(:place, :user => user)
		comment = FactoryGirl.create(:comment, :user => user, :place => place)
		post :create, :place_id => place.id, :comment => {:message => 'awesome!', :rating => '1_star'}
		assert_redirected_to place_path(place)
		# assert_not_nil comment

  end




end
