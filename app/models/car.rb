class Car < ApplicationRecord
  validates_presence_of :make
  validates_uniqueness_of :make

  def self.by_model
    order(:model)
  end 

  def self.by_price(direction = :asc)
    order(price: direction)
  end 
end
