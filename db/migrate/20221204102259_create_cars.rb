class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :manufacture
      t.string :make_and_model
      t.string :color
      t.string :image_url
      t.string :fuel_type
      t.string :transmission
      t.integer :mileage
      t.integer :engine_size
      t.integer :year

      t.timestamps
    end
  end
end
