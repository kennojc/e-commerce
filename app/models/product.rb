class Product < ApplicationRecord
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :variants
  accepts_nested_attributes_for :variants, reject_if: :all_blank, allow_destroy: true
end
