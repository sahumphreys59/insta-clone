FactoryBot.define do
	factory :user do
		sequence :email do |n|
			 "dummyEmail#{n}@gmai.com" 
		end
		password { "secretpassword" }
		password_confirmation { "secretpassword" }
	end

	factory :gram do
		message { "hello" }
		association :user
	end
end