class Company < ApplicationRecord
  has_many :transfers
  has_many :products
  has_many :sales
end