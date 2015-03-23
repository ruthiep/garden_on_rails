class User < ActiveRecord::Base
  
  has_many :gardens
end