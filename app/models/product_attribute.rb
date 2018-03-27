class ProductAttribute < ApplicationRecord
  belongs_to :product
  has_one :product_attribute, foreign_key: "id", class_name: "Attribute"
end
