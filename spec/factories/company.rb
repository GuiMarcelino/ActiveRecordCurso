FactoryBot.define do
  factory :company do
    name { Faker::Name.first_name }
    balance_cents { Random.rand(1000..100_000) }
    status { %w[Pending Active].sample }

  end
end