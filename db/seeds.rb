# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = FactoryBot.create(:user)
user2 = FactoryBot.create(:user)

company1 = FactoryBot.create(:company)
company2 = FactoryBot.create(:company)

FactoryBot.create_list(:transfer, 3, user: user1, company: company2)
FactoryBot.create_list(:transfer, 5, user: user2, company: company1)