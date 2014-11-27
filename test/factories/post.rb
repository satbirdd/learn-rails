FactoryGirl.define do
  factory :post do
    sequence(:title) { |n| "title#{Random.rand(10000)}-#{n}" }
    sequence(:content) { |n| "content#{Random.rand(10000)}-#{n}" }
  end
end