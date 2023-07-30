FactoryBot.define do
  sequence :name do |n|
    "user#{n}test"
  end
  factory :user do
    name
    number {'123456'} 
  end
end
