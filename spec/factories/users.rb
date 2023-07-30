FactoryBot.define do
  sequence :name do |n|
    "user#{n}nametest"
  end
  sequence :email do |n|
    "user#{n}@test.com"
  end
  factory :user do
    name
    number {'123456'} 
    email
    password {'123123'}
    password_confirmation {'123123'} 
  end
end
