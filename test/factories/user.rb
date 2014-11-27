FactoryGirl.define do
  factory :user do
    sequence(:login) { |n| "login#{Random.rand(10000)}#{n}" }
  end
end
