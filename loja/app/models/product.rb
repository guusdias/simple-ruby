class Product < ApplicationRecord
  belongs_to :departament, optional: true

  validates :preco, presence: true
  validates :name, length: {minimum:4}
end
