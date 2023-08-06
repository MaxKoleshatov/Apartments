FactoryBot.define do
  sequence :description do |n|
    "description#{n}test"
  end
  factory :apartment do
    square { "SQATest" }
    price { "PRATest" }
    price_meter { "PRSMATest" }
    description  
  end
end
