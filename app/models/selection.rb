class Selection < ActiveRecord::Base
  
  belongs_to :garden
  belongs_to :plant
  
  attr_accessible :quantity
end