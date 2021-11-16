FactoryBot.define do
  factory :transfer do
    amount_cents { Random.rand(1000..30_000) }
    user
    company
  end
end