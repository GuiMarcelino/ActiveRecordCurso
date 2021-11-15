FactoryBot.define do
  factory :user do
    name { Faker::Name.first_name }
    email { Faker::Internet.email }
    gender { %w[Female Male].sample } # ['Female, 'Male']
    age { Random.rand(10..30) }
    balance_cents { Random.rand(1000..100_000) }

  end
end