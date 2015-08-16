FactoryGirl.define do
	factory :user do
    sequence :email do |n|
      "lan#{n}@gmail.com"
    end
    password "test1234"
    password_confirmation "test1234"
  end

  factory :place do
  	name "Pizza Pizza"
  	description "Awesome Pize"
  	address "180 Strange St, Kitchener ON, Canada"
  	association :user
  end

  factory :comment do
  	message "Nom Nom Nom..."
  	rating "5_star"
  end

  factory :photo do
    caption "This is Caption"
    picture "jpeg"
    association :place
  end
end