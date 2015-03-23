class Category < ActiveRecord::Base
  has_many :plants
  
  attr_accessible :name
end