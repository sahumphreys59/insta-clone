FactoryBot.define do
  factory :comment do
    
  end

	factory :user do
		sequence :email do |n|
			 "dummyEmail#{n}@gmai.com" 
		end
		password { "secretpassword" }
		password_confirmation { "secretpassword" }
	end

	factory :gram do
		message { "hello" }
		picture { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'picture.png').to_s, 'image/png') }
		association :user
	end
end