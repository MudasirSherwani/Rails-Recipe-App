require 'faker'

FactoryBot.define do
  factory :food do
    name { Faker::Food.dish }
    measurement_unit { Faker::Food.metric_measurement }
    price { Faker::Commerce.price }
    quantity { Faker::Number.between(from: 1, to: 100) }
    association :user
  end
end
