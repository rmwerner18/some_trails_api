class CreateHikes < ActiveRecord::Migration[6.0]
  def change
    create_table :hikes do |t|
      t.integer :user_id
      t.integer :trail_id
      t.string :name
      t.datetime :start
      t.datetime :end
      t.float :length
      t.text :photos, default: [], array: true

      t.timestamps
    end
  end
end
