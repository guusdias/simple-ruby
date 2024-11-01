class Product < ApplicationRecord
  validates :preco, presence: true
  validates :name, length: {minimum:4}
end
