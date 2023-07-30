FactoryBot.define do
  sequence :description_sale do |n|
    "description#{n}test"
  end
  factory :sale_apartment do
    square_apartment { "SQATest" }
    price_apartment { "PRATest" }
    price_per_square_meter_apartment { "PRSMATest" }
    description_sale
  end
end
  