FactoryGirl.define do
  factory :user do
    email {Faker::Internet.email}
    password "Sparten123"
    password_confirmation "Sparten123"
  end

end
