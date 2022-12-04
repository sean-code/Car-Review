class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :username
      t.integer :rating
      t.string :comment
      t.belongs_to :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
