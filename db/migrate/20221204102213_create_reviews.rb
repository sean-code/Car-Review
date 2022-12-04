class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :author
      t.integer :rating
      t.string :comment
      t.integer :car_id

      t.timestamps
    end
  end
end
