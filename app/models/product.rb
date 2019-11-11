# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :category
  has_many :order_items

  def self.search(search)
    if search
      character = Product.where('name LIKE ?', "%#{search}%")
      if character
        where(name: character)
      else
        Product.all
      end
    else
      Product.all
    end
  end
end
