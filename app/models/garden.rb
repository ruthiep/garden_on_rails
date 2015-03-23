class Garden < ActiveRecord::Base
  has_many :selections
  has_many :plants, through: :selections
  belongs_to :user
  
  attr_accessible :name, :likes
  
  
  def self.join_search(garden_id)
   results = ActiveRecord::Base.connection.execute("SELECT quantity, gardens.name AS garden_name, plants.name AS plant_name FROM selections 
    LEFT JOIN gardens ON selections.garden_id = gardens.id 
    LEFT JOIN plants ON selections.plant_id = plants.id WHERE selections.garden_id 
    = #{garden_id}")
  end   
  
  def new_likes(garden_id)  
    @liked = Garden.find("gardens", '#{garden_id}') 
    @liked.likes +=1
    @liked.save("gardens")
  end
end