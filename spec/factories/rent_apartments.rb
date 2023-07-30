FactoryBot.define do
  sequence :description_rent do |n|
    "description#{n}test"
  end
  factory :rent_apartment do
    square_apartment { "SQATest" }
    price_mount_apartment { "PRMATest" }
    description_rent
  end
end