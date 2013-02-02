require 'factory_girl'

FactoryGirl.define do 
  factory :user do
    sequence(:email) {|n| "user_#{n}@pernix.cr" }
    password "12345678"
    password_confirmation "12345678"
  end

  factory :profile do
    first_name "John"
    last_name "Doe"
    company "Pernix"
    user
  end
end
