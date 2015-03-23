class Plant < ActiveRecord::Base
  
  belongs_to :category
  has_many :selections
  has_many :gardens, through: :selections
  
  attr_accessible :name, :sun, :picture
end