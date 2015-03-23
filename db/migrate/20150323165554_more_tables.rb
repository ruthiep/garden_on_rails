class MoreTables < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
      t.string :sun
      t.text :picture
      
      t.belongs_to :category, index: true
      
      t.timestamps
    end
    
    create_table :gardens do |t|
      t.string :name
      t.integer :likes, :default => 1
      t.belongs_to :user
      
      t.timestamps
    end
  
    create_table :selections do |t|
      t.integer :quantity
      t.belongs_to :garden
      t.belongs_to :plant
      
      t.timestamps
    end
  
    create_table :users do |t|
      t.string :name
      t.text :password
      
      t.timestamps
    end
end
  
end
