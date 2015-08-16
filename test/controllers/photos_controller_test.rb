require 'test_helper'

class PhotosControllerTest < ActionController::TestCase
	test "photo_add" do
	  user = FactoryGirl.create(:user)
	  sign_in user
	  place = FactoryGirl.create(:place)
	  # photo = FactoryGirl.attributes_for(:photo, :place => place)

	  post :create, :place_id => place.id, :photo => {:picture => fixture_file_upload("images/user.png"), :caption => 'caption'}

	  assert_redirected_to place_path(place)
	  assert_not_empty place.photos
	end
end
