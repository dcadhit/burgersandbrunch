FactoryGirl.define do
	factory :comment do
		message "This is a great burger joint!"
		rating "2_stars"
		user 
		place
	end

	factory :user do
		sequence :email do |n|
			"#{n}test@test.com"
		end
		password "password1234"
		password_confirmation "password1234"
	end

	factory :place do 
		name "Place"
		description "Description"
		address "10 Test St"
		user
	end
end