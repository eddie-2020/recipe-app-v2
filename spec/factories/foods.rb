FactoryBot.define do
  factory :food do
    name { Faker::Food.dish }
    measurement_unit { Faker::Food.measurement }
    price { Faker::Number.decimal(2) }
    user { FactoryBot.create(:user) }
  end
end
