class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :price 
      t.string :make 
      t.string :model 
      t.string :fuel_type 
      t.string :transmission 
      t.string :mileage
      t.string :engine_size
      t.string :year
      t.string :image 

      t.timestamps
    end
  end
end
