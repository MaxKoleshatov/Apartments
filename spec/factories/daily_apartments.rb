FactoryBot.define do
  sequence :description_daily do |n|
    "description#{n}test"
  end
  factory :daily_apartment do
    square_apartment { "SQATest" }
    price_daily_apartment { "PRDTest" }
    description_daily
  end
end
    