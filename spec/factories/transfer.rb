FactoryBot.define do
  factory :transfer do
    balance_cents { Random.rand(1000..30_000) }
    user
    company
  end
end